#!/bin/bash

echo " "

sort -n -t: -k5 antenas.txt > aux.txt
sed -n '$'p aux.txt >> maior_valor.txt

sort -n  -t: -k5 recetores.txt > aux.txt
sed -n '$'p aux.txt >> maior_valor.txt

sort -n -t: -k5 estacoes.txt > aux.txt
sed -n '$'p aux.txt >> maior_valor.txt

#sort -n -k3 redes.txt > aux.txt
#sed -n '$'p aux.txt >> maior_valor.txt

sort -n -t: -k5 maior_valor.txt > aux.txt

ultima=$(cut -d":" -f1 aux.txt | wc -l )

nome=$(awk -F ":" -v row=$ultima 'NR==row {print $2,$3,$5;}' aux.txt)

echo " "

echo "A entidade com maior valor é a/o $nome$ ."

./relatorios.sh

