#!/bin/bash

echo "Bem vindo, sr Presidente"
read -p "informe o valor de recarga para receber apoio do centrão R$: " valorCentrao

#TODO permitir recarga e iniciar novo ciclo de apoio do centrão ao governo
while ((valorCentrao>0));do

	echo "Parabéns, você acabou de realizar uma recarga no valor de R$ $valorCentrao,00"

	#subtrair o saldo a cada votação favorável do centrão
	valorVotacao=$((valorCentrao/4))
	while (($valorCentrao > 0));do

		echo "Nova votação favorável ao governo"
		valorCentrao=$((valorCentrao-valorVotacao))
		echo "seu crédito de apoio do centrão atual é: R$ $valorCentrao,00"
		echo ""
	done

	#encerrar o apoio quando acabar o crédito
	read -p "Seu crédito de apoio do centrão acabou! Informe um valor para uma nova recarga: R$" valorCentrao
done

#Quando não recarregar um valor válido, redirecionar para um atendente negociar um engavetamento de pedido de impeachment
echo "a recarga não foi efetuada. Não fique sem apoio do centrão!"
read -p "Gostaria de falar com um dos nossos atendentes e negociar um engavetamento de impeachment?"
