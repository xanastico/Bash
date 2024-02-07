#/bin/bash

echo " "

echo "Nome: "
read nome
echo " "

echo "Versão: "
read versao
echo " "

inovo=$(tail -n 1 softwares.txt | cut -d : -f 1)
let inovo=$inovo+1;

echo $inovo:"Software":$nome:$versao >> softwares.txt

echo "Software introduzido com sucesso"

./menu_principal.sh

