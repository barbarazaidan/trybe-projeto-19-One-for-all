SELECT 
    COUNT(hist.musica_id) AS musicas_no_historico
FROM
    SpotifyClone.Historico_reproducao AS hist
        INNER JOIN
    SpotifyClone.Usuario AS usu ON usu.pessoa_usuaria_id = hist.pessoa_usuaria_id
WHERE
    usu.nome_pessoa_usuaria = 'Barbara Liskov'
GROUP BY usu.pessoa_usuaria_id;