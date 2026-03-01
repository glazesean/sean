#!/bin/bash
# SessionStart: auto-pull latest changes from remote.
# Merge strategy: remote wins everywhere EXCEPT journal/ (Sean's version wins).
# Fails open — if offline or no remote, session proceeds normally.

cd "$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0

# Bail if no remote configured
git remote get-url origin &>/dev/null || exit 0

git fetch origin 2>/dev/null || exit 0

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main 2>/dev/null) || exit 0

# Nothing to do if up to date
[ "$LOCAL" = "$REMOTE" ] && exit 0

# Try merge with remote-wins strategy
# This covers scripts/, docs/, derived/ — your (remote) version wins on conflict
if ! git merge -X theirs origin/main --no-edit 2>/dev/null; then
    # If merge still fails (shouldn't with -X theirs, but safety),
    # abort and let session proceed with local state
    git merge --abort 2>/dev/null
    echo "Auto-pull: merge failed, proceeding with local state" >&2
    exit 0
fi

# Check if journal/ files were overwritten by the merge
# Restore Sean's version of any journal/ files that conflicted
CHANGED_JOURNAL=$(git diff HEAD~1 --name-only -- journal/ 2>/dev/null)
if [ -n "$CHANGED_JOURNAL" ]; then
    # Restore Sean's (pre-merge) versions of journal files that changed
    git checkout "$LOCAL" -- journal/ 2>/dev/null
    git commit -m "auto-pull: restore journal/ to local version" --no-edit 2>/dev/null
fi

exit 0
