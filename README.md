ポートフォリオ作成におけるメモ書き
====
# ローカルデプロイ
1. `git clone https://github.com/hideki-yoshioka/hideki-yoshioka.github.io.git`
1. `git submodule update --init --recursive`
1. `hugo server -D`  
1. http://localhost:1313/ にアクセスし確認する

# サーバデプロイ
1. ソース修正
1. `git add -A`
1. `git commit -m 'コメント'`
1. `git remote set-url origin https://hideki-yoshioka@github.com/hideki-yoshioka/hideki-yoshioka.github.io.git`
1. `./deploy.sh`
1. サイトが反映されているか確認する
