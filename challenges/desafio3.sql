SELECT 
    usu.nome_pessoa_usuaria AS pessoa_usuaria,
    COUNT(hist.musica_id) AS musicas_ouvidas,
    ROUND(SUM(mus.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.Usuario AS usu
        INNER JOIN
    SpotifyClone.Historico_reproducao AS hist ON usu.pessoa_usuaria_id = hist.pessoa_usuaria_id
        INNER JOIN
    SpotifyClone.Musicas AS mus ON hist.musica_id = mus.musica_id
GROUP BY usu.nome_pessoa_usuaria
ORDER BY usu.nome_pessoa_usuaria;