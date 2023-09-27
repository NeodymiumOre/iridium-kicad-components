#!/usr/bin/env sh
echo "---------------------------"
echo "Installing KiCad components"
echo "---------------------------"

echo "Symlink iridium library into ~/.local/share directory"
mkdir --parents "${XDG_DATA_HOME:-$HOME/.local/share}"
ln -sf $(pwd) "${XDG_DATA_HOME:-$HOME/.local/share/iridium-kicad-components}"

echo "----"
echo "DONE"
echo "----"

