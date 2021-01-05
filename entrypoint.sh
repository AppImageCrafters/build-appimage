#!/bin/sh -l

set -e

# Install requested appimage-builder version
if [ ! -z ${BUILDER_VERSION+x} ]; then
    sudo -H pip3 uninstall -y appimage-builder
    sudo -H pip3 install --upgrade git+https://github.com/AppImageCrafters/appimage-builder.git@${BUILDER_VERSION}
fi

# Move to the requeste workdir
if [ ! -z ${BUILDER_WORKDIR+x} ]; then
    cd ${BUILDER_WORKDIR}
fi

appimage-builder --skip-test $@

appimage_file=$(ls *.AppImage 2>/dev/null || echo "")
appimage_zsync_file=$(ls *.AppImage.zsync 2>/dev/null || echo "")

echo ::set-output name=appimage_file::$appimage_file
echo ::set-output name=appimage_zsync_file::$appimage_zsync_file
