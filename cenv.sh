#!/bin/sh

cenv () {
  env=$( conda env list | awk -vOFS='\t\t ' '/^[^#]/{$(NF--)=""; print}' | fzf | awk '{print $1}' )
  conda activate $env
}
