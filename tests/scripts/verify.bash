#!/usr/bin/env bash
git_root=$(git rev-parse --show-toplevel)

ln -s "$git_root"/tests/ ~/.emacs.d
ls -lah ~/
emacs --version
emacs --batch -f package-initialize -l "$git_root"/tests/scripts/use-package-lint-verify.el "$git_root"/my-init.org
