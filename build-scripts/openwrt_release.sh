#!/usr/bin/env bash

echo "Provided as-is, where is, use at your own risk. Have fun!" > $(dirname "$1")/$(basename -- "$1" .bin).hash.txt
sha256sum $1 >> $(dirname "$1")/$(basename -- "$1" .bin).hash.txt
md5sum $1 >> $(dirname "$1")/$(basename -- "$1" .bin).hash.txt

