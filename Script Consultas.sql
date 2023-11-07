USE filmes
GO


-- 1 - buscar o nome e ano dos filmes
SELECT 
	  nome
	, ano
FROM filmes
GO


-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	  nome
	, ano
FROM filmes
ORDER BY
	ano
GO


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
	  nome
	, ano
	, duracao
FROM filmes
WHERE
	UPPER(nome) =  UPPER('de volta para o futuro')
GO


-- 4 - Buscar os filmes lançados em 1997
SELECT 
	  nome
	, ano
	, duracao
FROM filmes
WHERE
	ano = 1997
GO


-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT 
	  nome
	, ano
	, duracao
FROM filmes
WHERE
	ano > 2000
GO


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	  nome
	, ano
	, duracao
FROM filmes
WHERE
	duracao > 100 AND duracao < 150 
ORDER BY
	duracao
GO


-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT 
	  ano
	, COUNT(ano) "Qtde"
FROM filmes
GROUP BY
	ano
ORDER BY
	Qtde DESC
GO


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	  PrimeiroNome
	, UltimoNome
FROM Atores
WHERE
	genero = 'M'
GO


-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	  PrimeiroNome
	, UltimoNome
FROM Atores
WHERE
	genero = 'F'
ORDER BY
	PrimeiroNome
GO


-- 10 - Buscar o nome do filme e o gênero
SELECT 
	  nome
	, genero
FROM filmes filmes
JOIN FilmesGenero filmesGenero
	ON filmesGenero.IdFilme = filmes.id
JOIN generos generos
	ON generos.id = filmesGenero.IdGenero
GO


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	  nome
	, genero
FROM filmes filmes
JOIN FilmesGenero filmesGenero
	ON filmesGenero.IdFilme = filmes.id
JOIN generos generos
	ON generos.id = filmesGenero.IdGenero
WHERE
	generos.id = 10
GO


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	  filmes.nome
	, atores.PrimeiroNome
	, atores.UltimoNome
	, elencoFilme.papel
FROM filmes filmes
JOIN ElencoFilme elencoFilme
	ON elencoFilme.IdFilme = filmes.id
JOIN atores atores
	ON atores.id = elencoFilme.IdAtor
GO
