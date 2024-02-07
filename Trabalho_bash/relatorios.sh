#!/bin/bash

echo " "
echo "----------"
echo "Relatórios"
echo "----------"
echo " "
echo "1 - Listar Antenas"
echo "2 - Listar Recetores"
echo "3 - Listar Software"
echo "4 - Listar Estações"
echo "5 - Listar Redes de Estações"
echo "6 - Entidade com maior valor"
echo "7 - Calcular valor de uma rede"
echo " "
echo "0 - Voltar ao menu principal"
echo " "
echo -n "Introduza a opção desejada: "
read op

echo " "

case $op in

0) ./menu_principal.sh;;
1) echo "--------Antenas--------" 
   echo " "
   cut -d ":" -f 1-5 antenas.txt | column -t -s ":"
     ./relatorios.sh;;
2) echo "--------Recetores--------"
   echo " "
   cut -d ":" -f 1-4 recetores.txt | column -t -s ":"
     ./relatorios.sh;;
3) echo "--------Softwares--------"
   echo " "
   cut -d ":" -f 1-3 softwares.txt | column -t -s ":"
     ./relatorios.sh;;
4) echo "--------Estações--------"
   echo " "
   cut -d ":" -f 1-7 estacoes.txt | column -t -s ":"
     ./relatorios.sh;;
5) echo "--------Redes--------"
   echo " "
   cut -d ":" -f 1,3 redes.txt | column -t -s ":" 
     ./relatorios.sh;;
6) ./maior_valor.sh;;
7) ./calcular_valor_rede;;
*) echo "ERRO: Opção Inválida"
    ./relatorios.sh;;

esac

