##!/usr/bin/env bash
emacs --batch -f package-initialize -l tests/scripts/use-package-lint-verify.el my-init.org
