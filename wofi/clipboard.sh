
#!/bin/bash

# File to store clipboard history
HISTORY_FILE=/tmp/clipboard_history.txt

# Get the current clipboard content
CURRENT_ITEM=$(wl-paste)

# Check if the file exists; if not, create it
[ ! -f "$HISTORY_FILE" ] && touch "$HISTORY_FILE"

# Add the current item to the history if it's not already the last item
if [ "$(tail -n 1 "$HISTORY_FILE")" != "$CURRENT_ITEM" ]; then
    echo "$CURRENT_ITEM" >> "$HISTORY_FILE"
fi

# Limit the history to the last 15 items
tail -n 15 "$HISTORY_FILE" | wofi --dmenu --cache-file=/tmp/wofi_clipboard_cache | xargs -r wl-copy
