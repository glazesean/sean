#!/bin/bash
# PreToolUse: Block edits that delete content from self-reports/ files.
# Allows: Write (new files), Edit (appending only).
# Blocks: Edit that removes lines, Write that overwrites existing journal file with less content.

TOOL_NAME="$TOOL_NAME"
INPUT=$(cat)

# Only care about Write and Edit on self-reports/ paths
FILE_PATH=$(echo "$INPUT" | python3 -c "
import sys, json
try:
    d = json.load(sys)
    print(d.get('file_path', ''))
except:
    print('')
" 2>/dev/null)

# Not a journal file — allow
case "$FILE_PATH" in
    */self-reports/*) ;;
    *) exit 0 ;;
esac

if [ "$TOOL_NAME" = "Write" ]; then
    # If file doesn't exist yet, allow (new file creation)
    if [ ! -f "$FILE_PATH" ]; then
        exit 0
    fi

    # File exists — check that new content is longer (append, not overwrite)
    EXISTING_LINES=$(wc -l < "$FILE_PATH" 2>/dev/null || echo 0)
    NEW_LINES=$(echo "$INPUT" | python3 -c "
import sys, json
try:
    d = json.load(sys)
    print(d.get('content', '').count(chr(10)))
except:
    print(0)
" 2>/dev/null)

    if [ "$NEW_LINES" -lt "$EXISTING_LINES" ]; then
        echo '{"decision":"block","reason":"self-reports/ is append-only. Cannot overwrite with shorter content. Use Edit to append instead."}' >&2
        exit 2
    fi
fi

if [ "$TOOL_NAME" = "Edit" ]; then
    # Check if old_string is being replaced with something shorter (deletion)
    RESULT=$(echo "$INPUT" | python3 -c "
import sys, json
d = json.load(sys)
old = d.get('old_string', '')
new = d.get('new_string', '')
# Allow if new content contains all of old content (append/modify)
# Block if new content is shorter (deletion)
if len(new.strip()) < len(old.strip()) and old.strip() not in new:
    print('block')
else:
    print('allow')
" 2>/dev/null)

    if [ "$RESULT" = "block" ]; then
        echo '{"decision":"block","reason":"self-reports/ is append-only. Edits must not remove content. Append new information instead."}' >&2
        exit 2
    fi
fi

exit 0
