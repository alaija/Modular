#!/bin/bash

changedFiles=$(git status --porcelain --ignored=no --no-rename |\
    awk '!/fastlane\/|scripts\/|Pods\//{if($1!="D"){$1="";print}}' |\
    sed -e 's/^[[:space:]]*//' -e 's/"//g'|\
    awk '/.swift$/{printf "\"%s\"\n", $0}')
    
if [ -n "$changedFiles" ]; then
echo ${changedFiles[@]} | xargs swift-format -i
fi
