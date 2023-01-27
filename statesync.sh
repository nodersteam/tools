#!/bin/bash
systemctl stop rebusd

NAME_FOLDER=archive-temps-rebus
NAME_ARCHIVE=rebus_snap
NAME_PATH=$HOME/.rebusd/data/

sleep 5

mkdir -p $HOME/$NAME_FOLDER

sleep 5
cd $HOME/$NAME_FOLDER 

sleep 5
tar -zcvf $NAME_ARCHIVE.tar.gz $NAME_PATH

sleep 5
echo -e "\033[0;31m wget http://$(wget -qO- eth0.me):8000/$NAME_ARCHIVE.tar.gz \033[0m"

sleep 5
python3 -m http.server 8000
