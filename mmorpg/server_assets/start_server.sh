#!/bin/sh

currPath=$(pwd)
keyStr="/kbengine/"

bcontain=`echo $currPath|grep $keyStr|wc -l`


if [ $bcontain = 0 ]
then
	export KBE_ROOT="$(cd ../; pwd)"
else
	export KBE_ROOT="$(pwd | awk -F "/kbengine/" '{print $1}')/kbengine"
fi



export KBE_RES_PATH="$KBE_ROOT/kbe/res/:$(pwd):$(pwd)/res:$(pwd)/scripts/"
export KBE_BIN_PATH="$KBE_ROOT/kbe/bin/server/"

echo KBE_ROOT = \"${KBE_ROOT}\"
echo KBE_RES_PATH = \"${KBE_RES_PATH}\"
echo KBE_BIN_PATH = \"${KBE_BIN_PATH}\"

sh ./kill_server.sh

"$KBE_BIN_PATH/machine" --cid=${SERVER_NUM}129652375332859700 --gus=1&
"$KBE_BIN_PATH/logger" --cid=${SERVER_NUM}229652375332859700 --gus=2&
"$KBE_BIN_PATH/interfaces" --cid=${SERVER_NUM}329652375332859700 --gus=3&
"$KBE_BIN_PATH/dbmgr" --cid=${SERVER_NUM}429652375332859700 --gus=4&
"$KBE_BIN_PATH/baseappmgr" --cid=${SERVER_NUM}529652375332859700 --gus=5&
"$KBE_BIN_PATH/cellappmgr" --cid=${SERVER_NUM}629652375332859700 --gus=6&

"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859701 --gus=7&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859702 --gus=8&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859703 --gus=9&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859704 --gus=10&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859705 --gus=11&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859706 --gus=12&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859707 --gus=13&
"$KBE_BIN_PATH/baseapp" --cid=${SERVER_NUM}129652375332859708 --gus=14&

"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859701 --gus=15&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859702 --gus=16&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859703 --gus=17&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859704 --gus=18&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859705 --gus=19&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859706 --gus=20&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859707 --gus=21&
"$KBE_BIN_PATH/cellapp" --cid=${SERVER_NUM}229652375332859708 --gus=22&

"$KBE_BIN_PATH/loginapp" --cid=${SERVER_NUM}729652375332859700 --gus=23&
