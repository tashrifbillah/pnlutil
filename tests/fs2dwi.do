#!/bin/bash -eu

source SetUpData.sh

redo-ifchange ../fs2dwi.sh

verify $(which ConvertBetweenFileFormats) 7784ba3f1d0f74d2c37d1ceb8a08bbd2
verify $dwied 8687e26d3cd24c0a016cef1f8908a8f1
verify $dwiedmask 60e63b09e4a674bb9b9fc51dbaf2b153

out=$output/fs2dwi && rm -rf $out || true
run ../fs2dwi.sh $dwied $dwiedmask $fs/mri $out
verify $out/wmparc-in-bse.nrrd 64c8d74111997484bfe2e15b7466de78
verify $out/wmparc-in-bse-1mm.nrrd e40500603b23f101382cca74cbcb9ecc
