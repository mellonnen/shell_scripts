#!/usr/bin/sh
cd_with_fzf() {
    cd $HOME && cd "$(fd -t d -E "anaconda3" | fzf --preview="tree -C  {}" --bind="space:toggle-preview" --preview-window=:hidden)"
}
