#!/bin/bash

echo " "
echo "--------------"
echo "Menu Principal"
echo "--------------"
echo " "
echo "1 - Inserir dados"
echo "2 - Visualizar dados"
echo "3 - Alterar dados"
echo "4 - Relatórios"
echo "5 - Gestão do ficheiro de base de dados"
echo " "
echo "0 - Sair do programa"
echo " "
echo -n "Introduza a opção desejada: "

read op

case $op in

0) exit;;
1) ./inserir.sh;;
2) ./visualizar.sh;;
3) ./alterar.sh;;
4) ./relatorios.sh;;
5) ./base_dados.sh;;
*) echo "ERRO: Opção Invalida"
   ./menu_principal.sh;;

esac


