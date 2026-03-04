#!/bin/bash
# SessionStart: pull latest from all repos, sync skills + global config.
# Fails open — if offline or anything fails, session proceeds normally.

SEAN_ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0
SKILLS_ROOT="$HOME/Projects/skills"
CONFIG_ROOT="$HOME/Projects/claude-config"
PAPERS_MCP_ROOT="$HOME/Projects/papers-mcp"

SKILLS_REMOTE="https://github.com/markusstrasser/skills.git"
CONFIG_REMOTE="https://github.com/markusstrasser/claude-config.git"
PAPERS_MCP_REMOTE="https://github.com/markusstrasser/papers-mcp.git"

# Skills to sync into sean's .claude/skills/
SYNC_SKILLS="epistemics researcher source-grading entity-management causal-check"

# ─── Helper: clone-or-pull ────────────────────────────────────────────
clone_or_pull() {
    local dir="$1" remote="$2" label="$3"
    if [ ! -d "$dir" ]; then
        mkdir -p "$(dirname "$dir")" 2>/dev/null
        if git clone --depth 1 "$remote" "$dir" 2>/dev/null; then
            echo "Auto-pull: $label cloned" >&2
        else
            echo "Auto-pull: $label clone failed, skipping" >&2
            return 1
        fi
    elif [ -d "$dir/.git" ]; then
        git -C "$dir" fetch origin 2>/dev/null && \
        git -C "$dir" merge --ff-only origin/main 2>/dev/null
    fi
}

# ─── 1. Pull sean repo ───────────────────────────────────────────────
cd "$SEAN_ROOT" || exit 0
git remote get-url origin &>/dev/null || exit 0
git fetch origin 2>/dev/null || exit 0

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main 2>/dev/null) || exit 0

if [ "$LOCAL" != "$REMOTE" ]; then
    if ! git merge -X theirs origin/main --no-edit 2>/dev/null; then
        git merge --abort 2>/dev/null
        echo "Auto-pull: sean merge failed, proceeding with local state" >&2
    else
        # Restore self-reports/ if overwritten (Sean's version always wins)
        CHANGED_REPORTS=$(git diff HEAD~1 --name-only -- self-reports/ 2>/dev/null)
        if [ -n "$CHANGED_REPORTS" ]; then
            git checkout "$LOCAL" -- self-reports/ 2>/dev/null
            git commit -m "auto-pull: restore self-reports/ to local version" --no-edit 2>/dev/null
        fi
        echo "Auto-pull: sean repo updated" >&2
    fi
fi

# ─── 2. Pull skills repo + sync skills ───────────────────────────────
clone_or_pull "$SKILLS_ROOT" "$SKILLS_REMOTE" "skills"

if [ -d "$SKILLS_ROOT" ]; then
    for skill in $SYNC_SKILLS; do
        src="$SKILLS_ROOT/$skill"
        dst="$SEAN_ROOT/.claude/skills/$skill"
        if [ -d "$src" ]; then
            mkdir -p "$dst" 2>/dev/null
            cp "$src"/*.md "$dst/" 2>/dev/null
        fi
    done
    echo "Auto-pull: skills synced" >&2
fi

# ─── 3. Pull global config + sync CLAUDE.md ──────────────────────────
clone_or_pull "$CONFIG_ROOT" "$CONFIG_REMOTE" "claude-config"

if [ -f "$CONFIG_ROOT/CLAUDE.md" ]; then
    mkdir -p "$HOME/.claude" 2>/dev/null
    cp "$CONFIG_ROOT/CLAUDE.md" "$HOME/.claude/CLAUDE.md" 2>/dev/null
    echo "Auto-pull: global CLAUDE.md synced" >&2
fi

# ─── 4. Pull papers-mcp (research MCP server) ────────────────────────
clone_or_pull "$PAPERS_MCP_ROOT" "$PAPERS_MCP_REMOTE" "papers-mcp"

if [ -d "$PAPERS_MCP_ROOT" ]; then
    # Install dependencies on first clone
    if [ ! -d "$PAPERS_MCP_ROOT/.venv" ]; then
        (cd "$PAPERS_MCP_ROOT" && uv sync 2>/dev/null)
        echo "Auto-pull: papers-mcp dependencies installed" >&2
    fi
fi

# ─── 5. Inject paths and keys into .mcp.json ────────────────────────
MCP_FILE="$SEAN_ROOT/.mcp.json"

# Inject papers-mcp directory path
if [ -f "$MCP_FILE" ] && grep -q "PAPERS_MCP_DIR_HERE" "$MCP_FILE" 2>/dev/null; then
    sed -i '' "s|PAPERS_MCP_DIR_HERE|$PAPERS_MCP_ROOT|" "$MCP_FILE" 2>/dev/null
    echo "Auto-pull: papers-mcp path injected" >&2
fi

# Inject Exa API key from macOS keychain
if [ -f "$MCP_FILE" ] && grep -q "YOUR_EXA_API_KEY_HERE" "$MCP_FILE" 2>/dev/null; then
    EXA_KEY=$(security find-generic-password -s "exa-api-key" -w 2>/dev/null || \
              security find-generic-password -s "EXA_API_KEY" -w 2>/dev/null || \
              echo "")
    if [ -z "$EXA_KEY" ] && [ -n "$EXA_API_KEY" ]; then
        EXA_KEY="$EXA_API_KEY"
    fi
    if [ -n "$EXA_KEY" ]; then
        sed -i '' "s/YOUR_EXA_API_KEY_HERE/$EXA_KEY/" "$MCP_FILE" 2>/dev/null
        echo "Auto-pull: Exa API key injected from keychain" >&2
    fi
fi

exit 0
