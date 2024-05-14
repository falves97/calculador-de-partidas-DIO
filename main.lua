saldoPartidas = function (vitorias, derrotas)
	return vitorias - derrotas
end

calculaElo = function (saldo)
	if saldo < 10 then
		elo =  "Ferro"
	elseif saldo > 10 and saldo <= 20 then
		elo = "Bronze"
	elseif saldo > 20 and saldo <= 50 then
		elo  = "Prata"
	elseif saldo > 50 and saldo <= 80 then
		elo  = "Ouro"
	elseif saldo > 80 and saldo <= 90 then
		elo  = "Diamante"
	elseif saldo > 90 and saldo <= 100 then
		elo  = "Lendário"
	else 
		elo = "Imortal"
	end
	return elo
end

mostraElo = function (vitorias, derrotas)
	saldo = saldoPartidas(vitorias,derrotas)
	elo = calculaElo(saldo)
	print(string.format("O Herói tem de saldo de %s está no nível de %s", saldo, elo))
end
mostraElo(1000,5)
