#!/bin/bash
shopt -s extglob
set -eo pipefail

for sample in samples/*.cr samples/*/*.cr; do
  crystal script/run_with_timeout.cr "$sample"
done
