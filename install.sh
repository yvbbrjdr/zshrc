#!/bin/bash

DEST="$ZSH/custom"
cd "$(dirname "$0")"
if [[ -w "$DEST" ]]; then
    cp *.zsh "$DEST"
else
    sudo cp *.zsh "$DEST"
fi
