#! /bin/bash -e

cmd_path=$(which tflint)
if [ "${cmd_path}" = "" ]; then
  echo "tflint is not found. the cmd must be installed."
  exit 1
fi

dirs=`find modules -mindepth 1 -maxdepth 1 -type d`
for dir in $dirs; do
  echo "Lint for $dir"
  pushd $dir > /dev/null
  tflint --init --config="../../.tflint.hcl"
  tflint -f compact --config="../../.tflint.hcl"
  popd > /dev/null
done
