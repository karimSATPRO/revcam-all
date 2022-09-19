#!/bin/sh
TEMPATH='/tmp'
cd $TEMPATH
set -e
echo "############ DOWNLOADING FILES #############"
wget -q "https://cutt.ly/QVsAUXW"
echo "############ OPEN PLI ARM ##################"
echo "############ INSTALLATION STARTED ##########"

tar -xzf rev-openpli-arm.tgz -C /
set +e
rm -f rev-openpli-arm.tgz
cd ..
chmod 755 /usr/bin/revcamv2
chmod 755 /etc/init.d/softcam.RevCamV2
chmod 755 /etc/RevCamV2.emu
echo ""
cd ..
sync
echo "############ INSTALLATION COMPLETED ########"
echo "############ RESTARTING... #################" 
init 4
sleep 2
init 3
exit 0