#!/bin/sh

# Use `jq` with both JSON and non-JSON lines.
jjq () {
    if [ -n "$1" ]; then
        query=" | $1"
    fi 
    jq -R -r ". as \$line | try (fromjson$query) catch \$line"
}
