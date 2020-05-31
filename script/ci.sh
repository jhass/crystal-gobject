#!/bin/bash
shopt -s extglob
set -eo pipefail

cd samples

for sample in crout/*.cr; do
  echo "Running $sample"
  crystal $sample | crystal eval
done

for sample in $(ls *.cr */*.cr | grep -v crout); do
  crystal ../script/run_with_timeout.cr "$sample"
done

