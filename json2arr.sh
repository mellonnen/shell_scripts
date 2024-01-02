#!/bin/sh

json2arr () {
    sed -e '1s/^/[/' -e 's/$/,/' -e '$s/,$/]/'
}
