#!/bin/sh

dot_list="bashrc config gitconfig gitignore mozilla msmtprc muttrc slrnrc \
    ssh vim vimrc Xdefaults thunderbird signature vim_runtime"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
