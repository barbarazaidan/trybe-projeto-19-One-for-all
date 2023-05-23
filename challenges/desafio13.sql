SELECT 
    CASE
        WHEN usuario.idade <= 30 THEN 'Até 30 anos'
        WHEN
            usuario.idade > 30
                AND usuario.idade < 61
        THEN
            'Entre 31 e 60 anos'
        WHEN usuario.idade > 60 THEN 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT usuario.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(favoritas.musica_id) AS total_favoritadas
FROM
    SpotifyClone.Musicas_favoritas AS favoritas
        RIGHT JOIN -- pega também os usuários que não possuem músicas favoritas --
    SpotifyClone.Usuario AS usuario ON usuario.pessoa_usuaria_id = favoritas.pessoa_usuaria_id
GROUP BY faixa_etaria -- soma a quantidade de usuários em cada faixa etária --
ORDER BY faixa_etaria;
