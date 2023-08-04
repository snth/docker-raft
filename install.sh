#!/bin/sh

set -e

DEFAULT_FILENAME="docker-stack"
DEFAULT_TARGET_DIR="~/.local/bin/"
SOURCE_URL="https://raw.githubusercontent.com/snth/docker-stack/main/docker-stack"

read -p "Installation directory? [$DEFAULT_TARGET_DIR] " TARGET_DIR
read -p "Filename? [$DEFAULT_FILENAME] " FILENAME

TARGET_DIR=${TARGET_DIR:-$DEFAULT_TARGET_DIR}
TARGET="${TARGET_DIR%/}/$(basename ${FILENAME:-$DEFAULT_FILENAME})"
echo "Installing to \"$TARGET\" from \"$SOURCE_URL\" ..."
read -p "Continue? [y/N] "
if [[ $REPLY != [yY]* ]]; then
    echo "Aborting. Good bye!"
    exit 0
fi
curl --silent --show-error "$SOURCE_URL" -o "$TARGET"
chmod o+x $TARGET
echo "File written to: $TARGET"
echo "Installation complete!"
