-- 1 - Buscar o nome e ano dos filmes.

SELECT
	Nome,
	Ano
FROM 
	Filmes


-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.

SELECT
	Nome, 
	Ano,
	Duracao
FROM 
	Filmes
ORDER BY 
	ANO 


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração.

SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE 
	Nome = 'De Volta para o futuro'

-- 4 - Buscar filmes lançados em 1997.

SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE 
	ANO = 1997


-- 5 - Buscar filmes lançados APÓS o ano 2000.

SELECT
	Nome, 
	Ano,
	Duracao
FROM 
	Filmes
WHERE 
	Ano > 2000

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente.

SELECT
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE 
	Duracao > 100 AND Duracao < 150
ORDER BY 
	Duracao


-- 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenado pela duração em ordem decrescente.

-- OBS: Acredito que o desafio estava propondo uma ordenção pelo campo "Quantidade" e não por duração. Uma vez que não temos o campo duração aparecendo no gabarito do desafio.

SELECT
	Ano,
	COUNT (Nome) 'Quantidade'
FROM 
	Filmes
GROUP BY 
	Ano
ORDER BY 
	Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome.

SELECT
	*
FROM 
	Atores
WHERE 
	Genero =  'M'

-- 9 - Buscar Atores do gênero feminino, retornando o PrimeiroNome, UltinoNome, e ordenando pelo PrimeiroNome

SELECT
	*
FROM 
	Atores
WHERE 
	Genero = 'F'
ORDER BY 
	PrimeiroNome


-- 10 - Buscar o nome do filme e o gênero 


SELECT
	Nome,
	Genero
FROM 
	Filmes
INNER JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos ON FilmesGenero.IdGenero = Generos.Id



-- 11 - Buscar o nome do filme e gênero do tipo "Mistério"

SELECT
	Nome,
	Genero
FROM 
	Filmes
INNER JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE
	Genero = 'Mistério'


-- 12 - Buscar nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel


SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	Filmes
INNER JOIN
	ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN
	Atores ON ElencoFilme.IdAtor = Atores.Id
