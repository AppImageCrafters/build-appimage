#!/bin/sh -l

appimage-builder --skip-test --recipe $1

appimage_file=$(ls *.AppImage)
appimage_zsync_file=$(ls *.AppImage.zsync)

echo ::set-output name=appimage_file::$appimage_file
echo ::set-output name=appimage_zsync_file::$appimage_zsync_file