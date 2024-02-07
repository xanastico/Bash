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

echo -n "Numero de sinais recebidos: "
read numero_sinais
echo " "

if [$numero_sinais -ge 1 -a $numero_sinais lt 5]; then
  for ((i=1;i<=$numero_sinais;i++)) do
    echo "Sinais: "
    echo " "
    echo "1) GPS"
    echo "2) GLONAS"
    echo "3) GALILEU"
    echo "4) BEIDOU"
    echo " "
    echo -n "Sinal $i: "
    read sinal
    
    case $sinal in
      1) sinais=$(sed "s/$/GPS/" antenas.txt);;
      2) sinais=$(sed "s/$/Glonas/" antenas.txt);;
      3) sinais=$(sed "s/$/GALILEU/" antenas.txt);;
      4) sinais=$(sed "s/$/BEIDOU/" antenas.txt);; 
    esac
  done
else
  echo "Numero sinais invalido!"
  ./inserir_antena.sh
fi    

echo " "

inovo=$(tail -n 1 antenas.txt | cut -d : -f 1)
let inovo=$inovo+1;

echo $inovo:"Antena":$nome:$fornecedor:$preco:$sinais >> antenas.txt

./inserir.sh


