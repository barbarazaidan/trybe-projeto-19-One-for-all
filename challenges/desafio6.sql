SELECT 
    MIN(p.valor_plano) AS faturamento_minimo,
    MAX(p.valor_plano) AS faturamento_maximo,
    ROUND(SUM(p.valor_plano)/ COUNT(u.pessoa_usuaria_id), 2) AS faturamento_medio,
    ROUND(SUM(p.valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.Planos AS p
        INNER JOIN
    SpotifyClone.Usuario AS u ON p.plano_id = u.plano_id;