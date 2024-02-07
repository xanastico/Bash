#!/bin/bash

echo " "
echo "-------------"
echo "Inserir dados"
echo "-------------"
echo " "
echo "Escolha o equipamento prentende inserir:"
echo " "
echo "1 - Antena"
echo "2 - Recetor"
echo "3 - Software"
echo "4 - Estação"
echo "5 - Rede de Estações"
echo " "
echo "0 - Voltar ao menu principal"
echo " "

echo -n "Tipo de equipamento: "

read op

case $op in

0) ./menu_principal.sh;;
1) ./inserir_antena.sh;;
2) ./inserir_recetor.sh;;
3) ./inserir_software.sh;;
4) ./inserir_estacao.sh;;
5) ./inserir_rede.sh;;
*) echo "ERRO: Opção inválida"
	./inserir.sh;;

esac
