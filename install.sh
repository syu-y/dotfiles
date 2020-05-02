#!/bin/bash -e

IGNORE_PATTERN="^\.(git|travis|DS_Store)"

echo "Create dotfile links."
for dotfiles in .??*; do
    [[ $dotfiles =~ $IGNORE_PATTERN ]] && continue
    ln -snfv "$(pwd)/$dotfiles" "$HOME/$dotfile"
done

echo "---------------"

for dotfiles in .zprezto/runcoms/??*; do
    rcfile="`basename $dotfiles`"
    echo $rcfile
    ln -snfv "$(pwd)/$dotfiles" "$HOME/.$rcfile"
done

echo "Success"
