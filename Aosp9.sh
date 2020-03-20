mkdir ~/bin
PATH=~/bin:$PATH

rm -fr ./git-repo


git clone https://gerrit-googlesource.lug.ustc.edu.cn/git-repo

sudo cp -r ./git-repo/. ./bin
chmod a+x ~/bin/repo

git config --global user.email "xiaomi@xiaomi.com"
git config --global user.name "xiaomi"

cd ~/Android9

repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 9.x
