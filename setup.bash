#!/bin/bash
INSTALL_PATH=$( cd $(dirname $0); pwd )

echo "Install path is $INSTALL_PATH"
echo "Now, seting up your bash environment..."
echo ""

# set PATH so it includes user's private bin if it exists

if [ -d "$INSTALL_PATH/bin" ] ; then
  echo 'export PATH="'$INSTALL_PATH'/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc
fi