#!/bin/bash
KB_NODE="https://help.wnpower.com/hc/es/articles/360018540771-C%C3%B3mo-instalar-Node-js"

if [ ! -f ~/bin/node ]; then
	echo "Primero tiene que estar instalado Node.JS para poder instalar Yarn. Por favor verifica la siguiente guía para instalarlo: $KB_NODE"
	exit 1
fi

cd ~
wget https://yarnpkg.com/install.sh -O ./install_yarn.sh
bash ./install_yarn.sh

rm -f ./install_yarn.sh

source ~/.bashrc

yarn
yarnpkg

rm -f $0
echo "Listo!"
