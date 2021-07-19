#!/bin/sh

# Conda enviorment browser using fzf
cenv () {
  env=$( conda env list | awk -vOFS='\t\t' '/^[^#]/{$(NF--)=""; print}'| fzf -m --preview="conda list" --bind="space:toggle-preview" --preview-window=:hidden | awk '{print $1}' )
  conda activate $env
}
