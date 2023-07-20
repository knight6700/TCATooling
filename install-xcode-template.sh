#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/TCA'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy TCA file templates into the local TCA template directory
xcodeTemplate () {
  echo "==> Copying up TCA Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/*.xctemplate "$XCODE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR/TCALeaf.xctemplate/* "$XCODE_TEMPLATE_DIR/TCALeaf.xctemplate/"
  cp -R $SCRIPT_DIR/TCARoot.xctemplate/* "$XCODE_TEMPLATE_DIR/TCARoot.xctemplate/"
  cp -R $SCRIPT_DIR/Dependency.xctemplate/* "$XCODE_TEMPLATE_DIR/Dependency.xctemplate/"
}

xcodeTemplate

echo "==> ... success!"
echo "==> TCA have been set up. In Xcode, select 'New File...' to use TCA templates."
