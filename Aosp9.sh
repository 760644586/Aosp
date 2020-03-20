sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y python3.7
sudo apt-get install -y python3-pip
sudo apt-get install -y libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev g++-multilib
sudo apt-get install -y git flex bison gperf build-essential libncurses5-dev:i386
sudo apt-get install -y tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386
sudo apt-get install -y dpkg-dev libsdl1.2-dev libesd0-dev
sudo apt-get install -y git-core gnupg flex bison gperf build-essential  
sudo apt-get install -y zip curl zlib1g-dev gcc-multilib g++-multilib
sudo apt-get install -y libc6-dev-i386
sudo apt-get install -y lib32ncurses5-dev x11proto-core-dev libx11-dev
sudo apt-get install -y libgl1-mesa-dev libxml2-utils xsltproc unzip m4
sudo apt-get install -y lib32z-dev ccache

mkdir ~/bin
PATH=~/bin:$PATH

git clone https://gerrit-googlesource.lug.ustc.edu.cn/git-repo
sudo cp -r ./git-repo/. ./bin
chmod a+x ~/bin/repo

git config --global user.email "xiaomi@xiaomi.com"
git config --global user.name "xiaomi"

mkdir -p Android9
cd Android9

repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 9.x
repo sync -f -d -j4
