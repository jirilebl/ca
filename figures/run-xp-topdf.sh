#!/bin/sh
# Used from run-all-xp.sh
exec elaps --pdf -p amsmath -p amsfonts -p amssymb -p newpxmath -p newpxtext --size 12 $1
