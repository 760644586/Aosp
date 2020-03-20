mkdir ~/bin
PATH=~/bin:$PATH

curl https://gerrit-googlesource.lug.ustc.edu.cn/git-repo > ~/bin/repo
chmod a+x ~/bin/repo

git config --global user.email "xiaomi@xiaomi.com"
git config --global user.name "xiaomi"

mkdir -p Android9
cd Android9

repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 9.x
repo sync -f -d -j4
