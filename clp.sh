#!/bin/sh

clp () {
    mv "$1"/*(DN) . && rm -df "$1"
}