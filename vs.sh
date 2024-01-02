#!/bin/sh

# vim scratchpad
vs() {
  ext=""
  while getopts ":e:" OPTION; do
    case "$OPTION" in
      e) ext=".$OPTARG";;
      ?)
        echo "usage: vs [-e extension]"
        exit 1
        ;;
    esac
  done
  temp="/tmp/vs-$(uuidgen)$ext"
  v "$temp" && cat "$temp" | pbcopy 
}
