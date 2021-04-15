#!/bin/sh
if [ -z "S1" ]
then 
	echo "Invoke with setupWebBCEProject NAME"
	exit 1
fi
PROJECT_NAME=$1

TEMPLATE="/Users/ulfrossang/workspace/webcomponent/bce.design/app"
TARGET="${PWD}/${PROJECT_NAME}/"
echo "Creating $TARGET"
mkdir $TARGET
cd $TEMPLATE
cp -R $TEMPLATE/src $TARGET/src 

cd $TARGET
code . -n
browser-sync start -s src -f src --cors -b "google chrome" --no-notify
open -a Terminal .





