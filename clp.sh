#!/bin/sh

clp () {
    mv "$1"/* . && rm -rf "$1"
}
