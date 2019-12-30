#!/bin/bash

# sourceにpush
git push origin source

# docsディレクトリに公開データをoutput
hugo;

files=`git status|grep -e "modified" -e "new file"`;

if [ -n "$files" ]; then
    # 差分データがある
    git add -A;
    git add commit -m '公開';
    # sourceにpush
    git push origin source
    # masterにpush
    git subtree push --prefix docs/ origin master
else
    # 差分データがない
    echo 'nothing add data.';
fi
exit 0