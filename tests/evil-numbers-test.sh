#!/bin/bash
SCRIPT_PATH="$(dirname "${BASH_SOURCE[0]}")"
emacs \
    -batch \
    --eval "(package-initialize)" \
    -l ert \
    -l "$SCRIPT_PATH/../evil-numbers.el" \
    -l $SCRIPT_PATH/evil-numbers-test.el \
    -f ert-run-tests-batch-and-exit