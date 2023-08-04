#!/bin/sh

set -e

FILENAME="docker-stack"
TARGET_DIR="~/.local/bin/"
TARGET="$TARGET_DIR/$FILENAME"
SOURCE_URL="https://raw.githubusercontent.com/snth/docker-stack/main/$FILENAME"

echo "Installing to $TARGET from $SOURCE_URL ..."
read -p "Continue?"
curl "$SOURCE_URL" -o "$TARGET"
chmod o+x $TARGET
