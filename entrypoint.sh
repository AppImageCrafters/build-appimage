#!/bin/sh -l

set -e

appimage-builder --skip-test $@

appimage_file=$(ls *.AppImage 2>/dev/null || echo "")
appimage_zsync_file=$(ls *.AppImage.zsync 2>/dev/null || echo "")

echo ::set-output name=appimage_file::$appimage_file
echo ::set-output name=appimage_zsync_file::$appimage_zsync_file