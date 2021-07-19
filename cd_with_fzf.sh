#!/usr/bin/sh

# Fast cd using fzf
cd_with_fzf() {
    cd $HOME && cd "$(fd -t d -E "go" | fzf --preview="tree -C -L 2 {}" --bind="space:toggle-preview")"
}
