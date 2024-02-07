#!/bin/bash

echo " "
echo "   <----------------->"
echo "     Alterar Estação "
echo "   <----------------->"
echo " "

echo -n "Insira o ID da música que pretende alterar: "
echo "(insira o número zero para sair para o Menu Principal)"
read id
echo " "

if [ $id -ge 1 -a $id -lt 11 ]; then
  idd=$((id+1))

  echo "Insira o nome: "
  read nome1
  echo " "
  nome=$(awk -F ':' -v row=$idd -v col=2 'NR==row{print $col}' estacoes.txt)

  echo "Insira o localização: "
  read localizacao1
  echo " "
  localizacao=$(awk -F ':' -v row=$idd -v col=3 'NR==row{print $col}' estacoes.txt)

  echo "Insira o preço: "
  read preco1
  echo " "
  preco=$(awk -F ':' -v row=$idd -v col=4 'NR==row{print $col}' estacoes.txt)

  sed -i "${idd}s/${nome}/${nome1}/g" estacoes.txt
  sed -i "${idd}s/${localizacao}/${localizacao1}/g" estacoes.txt
  sed -i "${idd}s/${preco}/${preco1}/g" estacoes.txt

  echo "Estação Introduzido com Sucesso!"

  ./alterar.sh
  
elif [ $id = "0" ]; then
  ./menu_principal.sh
else
  echo "ID INVÁLIDO"
  ./alterar.sh
fi

