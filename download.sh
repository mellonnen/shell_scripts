#!/usr/bin/sh
download () {
    FILE_PATH=$(find /mnt/c/Users/arvid/Downloads -type f -printf '%T+ %p\n' | sort | tail -n 1 | awk '{ print $2 }')
    FILE_NAME=$(echo "${FILE_PATH}" | awk -F "/" '{ print $NF }')
    mv $FILE_PATH $FILE_NAME
}
