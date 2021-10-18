#!/bin/bash

make clean

repo sync -c -d -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)

cd bootable/recovery
git fetch https://github.com/PitchBlackRecoveryProject/android_bootable_recovery torch-fixes
git cherry-pick 69a426889b5d62a0bae7f028c2e0c82e2def481a
cd ../../

echo " Patching Pitch Black 9"
echo ""
