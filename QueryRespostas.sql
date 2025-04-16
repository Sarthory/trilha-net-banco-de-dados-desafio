-- 1
SELECT Nome, Ano FROM Filmes F

-- 2
SELECT Nome, Ano, Duracao FROM Filmes F ORDER BY F.Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes F WHERE LOWER(F.Nome) LIKE '%de volta para o futuro%'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes F WHERE F.Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes F WHERE F.Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes F WHERE F.Duracao > 100 AND F.Duracao < 150 ORDER BY F.Duracao

-- 7
SELECT F.Ano, COUNT(*) AS Quant FROM Filmes F GROUP BY F.Ano ORDER BY Quant DESC

-- 8
SELECT A.PrimeiroNome, A.UltimoNome, A.Genero FROM Atores A WHERE A.Genero = 'M'

-- 9
SELECT A.PrimeiroNome, A.UltimoNome, A.Genero FROM Atores A WHERE A.Genero = 'F' ORDER BY A.PrimeiroNome

-- 10
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FGN ON F.Id = FGN.IdFilme
INNER JOIN Generos G ON G.Id = FGN.IdGenero

-- 11
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FGN ON F.Id = FGN.IdFilme
INNER JOIN Generos G ON G.Id = FGN.IdGenero
WHERE LOWER(G.Genero) LIKE '%mistério%'

-- 12
SELECT F.Nome as Filme, 
	   A.PrimeiroNome AS 'Primeiro Nome', 
	   A.UltimoNome as 'Último Nome', EL.Papel 
FROM Filmes F 
INNER JOIN ElencoFilme EL ON F.Id = EL.IdFilme
INNER JOIN Atores A ON A.Id = EL.IdAtor