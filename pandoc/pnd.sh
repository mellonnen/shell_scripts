#!/bin/sh
# pnd copies the Makefile and subistutes the target names with the provided name of the document
pnd () {
  if [[ $1 == "" ]]; then
    echo "Provide the name of your document (no extension)"
    return
  fi
  sed "s/NAME/$1/g" ~/shell_scripts/pandoc/pandoc.Makefile > ./Makefile
  make
}
