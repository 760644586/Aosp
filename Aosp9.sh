mkdir ~/bin
PATH=~/bin:$PATH
timeout 3

rm -fr ./git-repo
timeout 3

git clone https://gerrit-googlesource.lug.ustc.edu.cn/git-repo
timeout 3

sudo cp -r ./git-repo/. ./bin
timeout 3
chmod a+x ~/bin/repo
timeout 3

git config --global user.email "xiaomi@xiaomi.com"
git config --global user.name "xiaomi"

mkdir -p Android9
timeout 3
cd Android9
timeout 3

repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 9.x
