#!/bin/sh

PLUGIN_NAME="ImportSorter.xcplugin"
ARCHIVED_PLUGIN_NAME="ImportSorter.tar.gz"
PLUGINS_DIR="${HOME}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/"
COPY_TARGET_DIR="${HOME}/Downloads/"
CURRENT_DIR=`pwd`

PLUGIN_PATH=${PLUGINS_DIR}${PLUGIN_NAME}
COPIED_PLUGIN_PATH=${COPY_TARGET_DIR}${PLUGIN_NAME}


cat "${PLUGIN_PATH}"

rm -rf "${PLUGIN_PATH}"
xcodebuild
cp -r "${PLUGIN_PATH}" ${COPY_TARGET_DIR}
cd ${COPY_TARGET_DIR}
tar -cvzf ${ARCHIVED_PLUGIN_NAME} ${PLUGIN_NAME}
cd ${CURRENT_DIR}
