SELECT
-- exibo nome do artista, nome do album e conto quantas pessoas usuárias seguem cada artista 
    art.artista, alb.album, COUNT(seg.pessoa_usuaria_id) AS pessoas_seguidoras
FROM
    SpotifyClone.Artistas AS art
        INNER JOIN
    SpotifyClone.Albuns AS alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.Seguindo_artistas AS seg ON seg.artista_id = art.artista_id
-- agrupo pelo id dos artistas que estão sendo seguidos e pelo nome do álbum
GROUP BY seg.artista_id, alb.album
ORDER BY pessoas_seguidoras DESC, artista, album;