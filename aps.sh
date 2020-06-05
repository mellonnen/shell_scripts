#!/bin/sh

aps () {
    sudo apt-get update -qq
    
    search=$(apt-cache search .| cut -d' ' -f1 | fzf -m --preview="apt-cache show {}" --bind=space:toggle-preview --preview-window=:hidden)
    if [ -z "$search" ] 
        then
    return
    else
        sudo apt-get install "$search"
    fi
}
