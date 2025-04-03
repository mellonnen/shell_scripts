#!/bin/sh

gomodrename() {
    NEW="$1"
    CUR=$(go mod edit -print | head -n1 | awk '{ print $2 }')
    go mod edit -module "${NEW}"
    find . -type f -name '*.go' -exec perl -pi -e 's/$ENV{CUR}/$ENV{NEW}/g' {} \;
}
