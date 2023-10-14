#! /bin/bash -e

cmd_path=$(which terraform-docs)
if [ "${cmd_path}" = "" ]; then
  echo "terraform-docs is not found. the cmd must be installed."
  exit 1
fi

dirs=`find modules -mindepth 1 -maxdepth 1 -type d`
for dir in $dirs; do
  echo "Generating documentation for $dir"
  pushd $dir > /dev/null
  terraform-docs markdown table --output-file README.md --output-mode inject .
  popd > /dev/null
done
