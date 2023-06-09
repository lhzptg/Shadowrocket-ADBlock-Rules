#!/bin/bash

Path=$(pwd)"/.."
echo $Path
cd $Path

git fetch --all
git reset --hard origin/master

python3 ./factory/ad.py
python3 ./factory/gfwlist.py
python3 ./factory/build_confs.py
#cd ..

git add .
git commit -m "Nightly build" -m "已合并最新的去广告规则及 GFWList"
git push
