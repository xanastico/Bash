#/bin/bash

echo " "

echo -n "Nome: "
read nome
echo " "

echo -n "Localização: "
read localizacao
echo " "

cut -d ":" -f 1-5 antenas.txt | column -t -s ":"
echo " "
echo -n "ID da Antena: "
read id_a
echo " "
let idd_a=$id_a+1
nome_a=$(awk -F ":" -v row=$idd_a 'NR==row {print $2;}' antenas.txt) 

cut -d ":" -f 1-4 recetores.txt | column -t -s ":"
echo " "
echo -n "ID do Recetor: "
read id_r
echo " "
let idd_r=$id_r+1
nome_r=$(awk -F ":" -v row=$idd_r 'NR==row {print $2;}' recetores.txt)

cut -d ":" -f 1-3 softwares.txt | column -t -s ":"
echo " "
echo -n "ID do Software: "
read id_s
echo " "
let idd_s=$id_r+1
nome_s=$(awk -F ":" -v row=$idd_s 'NR==row {print $2;}' softwares.txt)

echo -n "Preço Final: "
read preco
echo " "

inovo=$(tail -n 1 estacoes.txt | cut -d : -f 1)
let inovo=$inovo+1;

echo $inovo:"Estacao":$nome:$localizacao:$preco:$nome_a:$nome_r:$nome_s >> estacoes.txt

echo "***Estação introduzida com sucesso***"

./menu_principal.sh
