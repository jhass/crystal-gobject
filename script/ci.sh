#!/bin/bash
shopt -s extglob
set -eo pipefail

cd samples

for sample in *.cr */*.cr; do
  crystal ../script/run_with_timeout.cr "$sample"
done
