#!/bin/sh

message=$(cat .git/COMMIT_EDITMSG | commitlint)
exit_code=$?

if [[ $exit_code -ne 0 ]]; then
    echo $message
    exit 1
fi