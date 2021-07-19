#!/bin/sh

brews () {
    
    search=$(brew formulae | cut -d' ' -f1 | fzf -m --preview="brew info {}" --bind=space:toggle-preview --preview-window=:hidden)
    if [ -z "$search" ] 
        then
    return
    else
        brew install "$search"
    fi
}
