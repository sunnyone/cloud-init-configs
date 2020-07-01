#!/bin/bash

set -eo pipefail

mkdir -p build

for DIR in hosts/*; do
  HOST=$(basename "$DIR")
  cloud-localds --network-config "$DIR/network-config.yaml" "build/$HOST-data.img" "$DIR/user-data.yaml"
done
