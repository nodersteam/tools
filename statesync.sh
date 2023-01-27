#!/bin/bash

systemctl stop rebusd

export NAME_FOLDER=archive-temps-rebus
export NAME_ARCHIVE=rebus_snap
export NAME_PATH=$HOME/.rebusd/data/


mkdir -p $HOME/$NAME_FOLDER
cd $HOME/$NAME_FOLDER 

tar -zcvf $NAME_ARCHIVE.tar.gz $NAME_PATH

systemctl start rebusd
