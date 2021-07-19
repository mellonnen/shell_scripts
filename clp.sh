#!/bin/sh

# Colapses folder
clp () {
    mv "$1"/* . && rm -rf "$1"
}
