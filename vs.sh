#!/bin/sh

# vim scratchpad
vs() {
  temp="/tmp/vs-$(uuidgen)"
  v "$temp" && cat "$temp" | pbcopy 
}
