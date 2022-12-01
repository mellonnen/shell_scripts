#!/usr/bin/sh

# SOURCE: https://www.youtube.com/watch?v=QeJkAs_PEQQ&t=108s
# Fast cd using fzf
cd_with_fzf() {
  cd "$(fd . $HOME -t d -E "go" -E "Library" | fzf --preview="tree -C -L 2 {}" --bind="space:toggle-preview" --scheme="path" --border)"
}
