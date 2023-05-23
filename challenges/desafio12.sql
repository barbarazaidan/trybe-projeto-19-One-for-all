SELECT 
    cantor.artista AS artista,
    CASE 
        WHEN COUNT(favoritas.musica_id) >= 5 THEN 'A'
        WHEN COUNT(favoritas.musica_id) >= 3 AND COUNT(favoritas.musica_id) < 5 THEN 'B'
        WHEN COUNT(favoritas.musica_id) >= 1 AND COUNT(favoritas.musica_id) < 3 THEN 'C'
        ELSE '-'
    END AS ranking     
FROM
    SpotifyClone.Musicas_favoritas AS favoritas
        INNER JOIN
    SpotifyClone.Musicas AS music ON music.musica_id = favoritas.musica_id
        INNER JOIN
    SpotifyClone.Albuns AS alb ON music.album_id = alb.album_id
        RIGHT JOIN -- aqui eu pego tudo da tabela artista e os valores em comum com as outras tabelas --
    SpotifyClone.Artistas AS cantor ON alb.artista_id = cantor.artista_id
    GROUP BY cantor.artista
    ORDER BY COUNT(favoritas.musica_id) DESC, artista;
