#!/usr/bin/env fish
echo "---------------------------"
echo "Installing KiCad components"
echo "---------------------------"

set REPO "iridium-kicad-components"

# setup envvars for iridium component library
echo "Setup envvars for iridium component library"
set -Ux XDG_DATA_HOME "/home/$USER/.local/share"
set -Ux IRIDIUM_SYMBOL_DIR "$XDG_DATA_HOME/$REPO/symbols"
set -Ux IRIDIUM_FOOTPRINT_DIR "$XDG_DATA_HOME/$REPO/footprints.pretty"
set -Ux IRIDIUM_3DMODEL_DIR "$XDG_DATA_HOME/$REPO/3d-models"
echo "Done"

echo "Symlink iridium library into $XDG_DATA_HOME directory"
mkdir --parents "$XDG_DATA_HOME/$REPO"
ln -sfn $(pwd)/symbols $IRIDIUM_SYMBOL_DIR
ln -sfn $(pwd)/footprints $IRIDIUM_FOOTPRINT_DIR
ln -sfn $(pwd)/3d-models $IRIDIUM_3DMODEL_DIR
echo "Done"

echo "Don't forget to import libraries manually in KiCad and add project paths to envvars!"
