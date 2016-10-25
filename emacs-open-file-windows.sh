#!/bin/env bash
set -e

echo "Check and open emacs server"
emacsclient -e '(+ 0 1)' || emacs --daemon
echo "Open file $1"

[[ -n $1 ]] && FILE=`cygpath -u "$1"`
INFO=`emacsclient -e '(find-and-select-window-frame)'`
echo $INFO

if [ "$INFO" == "nil" ];
then
    echo "No window frame in emacs, launching in new windows frame"
    emacsclient -c -n "$FILE"
elif [ "$INFO" == "t" ];
then
    echo "Open file in existing windows frame"
    if [[ -n $FILE ]]; then
        emacsclient -n "$FILE"
    else
        emacsclient -e  "(select-frame-set-input-focus (selected-frame))"
    fi
else
    echo "Unknow reponse"
fi
