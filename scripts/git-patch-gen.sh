#!/bin/sh

cd "$(dirname "$0")" || exit 
cd ../ || exit # cd to the git repository root

git log --oneline --reverse dc61691 | \
   sed -r 's/(^\w+\b)(.*)/git show --binary --patch \1 > patches\/\1.patch/'
   