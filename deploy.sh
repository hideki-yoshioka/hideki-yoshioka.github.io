#!/bin/bash

# sourceにpush
echo 'git push origin source'
git push origin source

# docsディレクトリに公開データをoutput
echo 'hugo'
hugo;

files=`git status|grep -e "modified" -e "new file"`;

if [ -n "$files" ]; then
    # 差分データがある
    echo 'git commit -m "公開"'
    git add -A;
    git commit -m '公開';
    # sourceにpush
    echo 'git push origin source'
    git push origin source
    # masterにpush
    echo 'git subtree push --prefix docs/ origin master'
    git subtree push --prefix docs/ origin master
else
    # 差分データがない
    echo 'nothing add data.';
fi
exit 0
