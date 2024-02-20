#!/usr/bin/env fish
echo "---------------------------"
echo "Installing KiCad components"
echo "---------------------------"

set REPO iridium-kicad-components

# cmd for fish
set -Ux XDG_DATA_HOME ~/.local/share

echo "Symlink iridium library into $XDG_DATA_HOME directory"
mkdir --parents "$XDG_DATA_HOME/$REPO"
ln -sfn $(pwd)/symbols "$XDG_DATA_HOME/$REPO/symbols"
ln -sfn $(pwd)/footprints "$XDG_DATA_HOME/$REPO/footprints.pretty"
ln -sfn $(pwd)/3d-models "$XDG_DATA_HOME/$REPO/3d-models"
echo "Done"

echo "Don't forget to import libraries manually in KiCad!"


