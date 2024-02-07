#!/bin/bash

echo " "
echo "--------------------"
echo "Gestão de Base Dados"
echo "--------------------"
echo " "
echo "1 - Criar uma cópia de segurança"
echo "2 - Restaurar uma cópia de segurança"
echo "3 - Apagar uma cópia de segurança"
echo " "
echo "0 - Sair para o menu principal"
echo " "
echo -n "Introduza a opção desejada: "


read op

case $op in

0) ./menu_principal.sh;;
1) echo "Insira o nome do ficheiro que quer copiar:"
   read nome1
   echo " "
   echo "Insira o nome da cópia: "
   read nome2
   cp $nome1 $nome2
   ./base_dados.sh;;
2) echo "Insira o nome da cópia que quer restaurar: "
   read nome1
   echo " "
   echo "Insira o nome do ficheiro base: "
   read nome2
   cp $nome2 $nome1
   ./base_dados.sh;;
3) echo "Insira o nome da cópia que quer apagar: "
   read nome
   rm $nome
   ./base_dados.sh;;
*) echo "ERRO: Opção Inválida"
    ./base_dados.sh;;

esac
