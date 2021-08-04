#!/bin/sh

# INSPIRATION: https://www.youtube.com/watch?v=QeJkAs_PEQQ&t=108s
# Homebrew browser usinf fzf
brews () {
    
    search=$(brew formulae | cut -d' ' -f1 | fzf -m --preview="brew info {}" --bind=space:toggle-preview --preview-window=:hidden)
    if [ -z "$search" ] 
        then
    return
    else
        brew install "$search"
    fi
}
