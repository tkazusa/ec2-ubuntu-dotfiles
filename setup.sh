#!/bin/bash
DOTDIR=$HOME/.dotfiles

# --------------------
# Install packages
# --------------------
source $DOTDIR/install.d/apt.sh
# source $DOTDIR/install.d/install-nodejs.sh
# source $DOTDIR/install.d/install-rust.sh
# source $DOTDIR/install.d/install-awscli2.sh
# source $DOTDIR/install.d/install-docker.sh
# source $DOTDIR/install.d/install-cdk.sh
source $DOTDIR/install.d/pip.sh
source $DOTDIR/install.d/install-fish.sh
# source $DOTDIR/install.d/install-amplify.sh
source $DOTDIR/install.d/link.sh

# -------------------
# Set gitconfigs
# -------------------
touch $HOME/.gitconfig
if ! `grep "\[include\]" $HOME/.gitconfig > /dev/null`; then
  cat << EOF >> $HOME/.gitconfig
[include]
	path = $DOTDIR/.gitconfig.local
EOF
fi
