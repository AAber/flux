#!/bin/bash


flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=flux \
  --branch=main \
  --path=./clusters/my-cluster \
  --personal
