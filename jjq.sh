#!/bin/sh

# Use `jq` with both JSON and non-JSON lines.
jjq () {
    jq -R -r "${1:-.} as \$line | try fromjson catch \$line"
}
