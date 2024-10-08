#!/bin/bash

MODE=$1
FILES=(./key.json)

case $MODE in
  enc)
    for FILE in $FILES; do
        echo "Encrypting file: $FILE"
        sops -e -i "$FILE"
    done
    ;;
  dec)
    for FILE in $FILES; do
        echo "Decrypting file: $FILE"
        sops -d -i "$FILE"
    done
    ;;
esac