#!/bin/sh

# INSPIRATION: https://www.youtube.com/watch?v=QeJkAs_PEQQ&t=108s
# apt-get browser using fzf
aps () {
    sudo apt-get update -qq
    
    search=$(apt-cache search .| cut -d' ' -f1 | fzf -m --preview="apt-cache show {}" --bind=space:toggle-preview --multi)
    if [ -z "$search" ] 
        then
    return
    else
        sudo apt-get install "$search"
    fi
}
