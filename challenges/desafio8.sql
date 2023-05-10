SELECT 
    art.artista, alb.album
FROM
    SpotifyClone.Artistas AS art
        INNER JOIN
    SpotifyClone.Albuns AS alb ON art.artista_id = alb.artista_id
WHERE
    art.artista = 'Elis Regina'
ORDER BY alb.album;