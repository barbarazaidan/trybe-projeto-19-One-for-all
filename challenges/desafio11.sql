SELECT 
    COUNT(favoritas.musica_id) AS favoritadas,
    Alb.album AS album
FROM
    SpotifyClone.Musicas_favoritas AS favoritas
        INNER JOIN
    SpotifyClone.Musicas AS music ON music.musica_id = favoritas.musica_id
        INNER JOIN
    SpotifyClone.Albuns AS Alb ON music.album_id = Alb.album_id
GROUP BY Alb.album
ORDER BY favoritadas DESC, album LIMIT 3;