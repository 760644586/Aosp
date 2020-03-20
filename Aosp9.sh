mkdir ~/bin
PATH=~/bin:$PATH
sleep(3000)

rm -fr ./git-repo
sleep(3000)

git clone https://gerrit-googlesource.lug.ustc.edu.cn/git-repo
sleep(10000)

sudo cp -r ./git-repo/. ./bin
sleep(3000)
chmod a+x ~/bin/repo
sleep(1000)

git config --global user.email "xiaomi@xiaomi.com"
git config --global user.name "xiaomi"

mkdir -p Android9
sleep(1000)
cd Android9

repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 9.x
