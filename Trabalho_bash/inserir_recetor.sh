#/bin/bash

echo " "

echo -n "Nome: "
read nome
echo " "

echo -n "Fornecedor: "
read fornecedor
echo " "

echo -n "Preço: "
read preco
echo " "

inovo=$(tail -n 1 recetores.txt | cut -d : -f 1)
let inovo=$inovo+1;

echo $inovo:"Recetor":$nome:$fornecedor:$preco >> recetores.txt

echo "***Recetor introduzido com sucesso***"

./menu_principal.sh

