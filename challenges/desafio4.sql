SELECT 
    usu.nome_pessoa_usuaria AS pessoa_usuaria,
    -- com o MAX filtro apenas a data de reprodução mais recente, com o YEAR mostro apenas o ano, então uso o IF para a condição de ativo ou inativo
     IF (YEAR(MAX(hist.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
    SpotifyClone.Usuario AS usu
        INNER JOIN
    SpotifyClone.Historico_reproducao AS hist ON usu.pessoa_usuaria_id = hist.pessoa_usuaria_id
GROUP BY usu.nome_pessoa_usuaria
ORDER BY usu.nome_pessoa_usuaria;