#!/bin/env bash
emacsclient -e '(+ 0 1)' || emacs --daemon
emacsclient -t $@
