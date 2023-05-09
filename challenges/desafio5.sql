SELECT 
    mus.musica AS cancao,
    -- conto o número de vezes que o id da música apareceu no histórico
    COUNT(hist.musica_id) AS reproducoes
FROM
    SpotifyClone.Musicas AS mus
        INNER JOIN
    SpotifyClone.Historico_reproducao AS hist ON mus.musica_id = hist.musica_id
GROUP BY mus.musica
-- ordeno 
ORDER BY reproducoes DESC, cancao
LIMIT 2;