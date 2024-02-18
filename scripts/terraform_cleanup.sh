#!/bin/bash

find . -iname '.terraform.lock.hcl' -exec rm -rf '{}' \;
find . -iname '.terragrunt-cache' -exec rm -rf '{}' \;
