#!/usr/bin/env bash
git_root=$(git rev-parse --show-toplevel)

"${git_root}"/tests/scripts/please-tangle-no.sh
