#!/bin/bash

echo " "
echo "   ------------------"
echo "   ***| Alterar|*** "
echo "   ------------------"
echo " "
echo "Antes de decidir alterar algo, é aconselhado "
echo "vizualizar primeiro o Nome que vai querer alterar"
echo " "
echo "1- Antena"
echo "2- Recetor"
echo "3- Software"
echo "4- Estação"
echo "5- Rede de Estações"
echo " "
echo "0- Sair para o menu principal"
echo " "
echo "Insira a opção desejada: "
read num
case $num in
0) ./menu_principal.sh;;
1) ./altant.sh;;
2) ./altrecetor.sh;;
3) ./altsoftware.sh;;
4) ./altstation.sh;;
5) ./altnetwork.sh;;
*) echo "OPÇÃO INVÁLIDA"
   ./alterar.sh

esac
