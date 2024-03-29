#!/bin/bash

gitremote () {
    GITLAB="gitlab"
    GITHUB="github"
    base=$(git remote get-url --push origin | sed -e "s/:/\//" -e "s/^git@/https:\/\//"  -e "s/.git$//g")
    if [ -z "$1" ]; then
        echo "$base"
    elif [[ $base =~ .*"$GITLAB".* ]]; then
        file=$(git rev-parse "$1")
        branch=$(git rev-parse --abbrev-ref HEAD)
        echo "$base/-/tree/$branch/$file"
    elif [[ $base =~ .*"$GITHUB".* ]]; then
        file=$(git rev-parse "$1")
        branch=$(git rev-parse --abbrev-ref HEAD)
        echo "$base/blob/$branch/$file"
    fi
}
