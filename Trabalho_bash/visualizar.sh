#!/bin/bash

echo " "
echo "----------------"
echo "Visualizar dados"
echo "----------------"
echo " "
echo "1 - Antena"
echo "2 - Recetor"
echo "3 - Software"
echo "4 - Estação"
echo "5 - Rede de Estações"
echo " "
echo "0 - Voltar ao menu principal"
echo " "
echo -n "Introduza a opção: "

read op

case $op in

0) ./menu_principal.sh;;
1) echo " "
echo "------------------"
echo "Visualizar Antenas"
echo "------------------"
echo " "
cut -d ":" -f 1-5 antenas.txt | column -t -s ":"
echo " "
./visualizar.sh;;

2)echo " "
echo "--------------------"
echo "Visualizar Recetores"
echo "--------------------"
echo " "
cut -d ":" -f 1-4 recetores.txt | column -t -s ":"
echo " "
./visualizar.sh;;

3)echo " "
echo "-------------------"
echo "Visualizar Software"
echo "-------------------"
echo " "
cut -d ":" -f 1-3 softwares.txt | column -t -s ":"
echo " " 
./visualizar.sh;;

4)echo " "
echo "------------------"
echo "Visualizar Estação"
echo "------------------"
echo " "
cut -d ":" -f 1-7 estacoes.txt | column -t -s ":"
echo " " 
./visualizar.sh;;

5)echo " "
echo "---------------------------"
echo "Visualizar Rede de Estações"
echo "---------------------------"
echo " "
cut -d ":" -f 1,3 redes.txt | column -t -s ":" 
./visualizar.sh;;

*) echo "ERRO: Opção Inválida"
	./visualizar.sh;;

esac

