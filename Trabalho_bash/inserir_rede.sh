#/bin/bash

echo " "

echo "Nome: "
read nome
echo " "

echo "Contacto (Nome, Email, Telefone): "
read contacto
echo " "

inovo=$(tail -n 1 redes.txt | cut -d : -f 1)
let inovo=$inovo+1;

echo $inovo:$nome:$contacto >> redes.txt

echo "Rede introduzida com sucesso"

./menu_principal.sh
