#!/bin/bash

echo " "
echo "   <----------------->"
echo "     Alterar Rede "
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
  nome=$(awk -F ':' -v row=$idd -v col=2 'NR==row{print $col}' redes.txt)

  echo "Insira o contacto: "
  read contacto
  echo " "
  contacto=$(awk -F ':' -v row=$idd -v col=3 'NR==row{print $col}' redes.txt)

  sed -i "${idd}s/${nome}/${nome1}/g" redes.txt
  sed -i "${idd}s/${contacto}/${contacto}/g" redes.txt

  echo "Estação Introduzido com Sucesso!"

  ./alterar.sh
  
elif [ $id = "0" ]; then
  ./menu_principal.sh
else
  echo "ID INVÁLIDO"
  ./alterar.sh
fi

