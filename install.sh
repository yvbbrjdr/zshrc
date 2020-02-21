#!/bin/bash

DEST="$ZSH/custom"
CUSTOM_FILE="yvzshrc_custom.zsh"
OTHER_FILES="yvzshrc_apt.zsh yvzshrc_brew.zsh yvzshrc_global.zsh yvzshrc_pacman.zsh yvzshrc_systemd.zsh yvzshrc_yay.zsh"
cd "$(dirname "$0")"
if [[ -w "$DEST" ]]; then
    cp $OTHER_FILES "$DEST"
    if [[ ! -f "$DEST/$CUSTOM_FILE"  ]]; then
        cp "$CUSTOM_FILE" "$DEST"
    fi
else
    sudo cp $OTHER_FILES "$DEST"
    if [[ ! -f "$DEST/$CUSTOM_FILE"  ]]; then
        sudo cp "$CUSTOM_FILE" "$DEST"
    fi
fi
