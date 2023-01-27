SELECT
    M.nome AS nome,
    COUNT(H.usuario_id) AS reproducoes
FROM SpotifyClone.Usuarios AS U
INNER JOIN
    SpotifyClone.Hist_reproducao AS H
    ON H.usuario_id = U.usuario_id
INNER JOIN 
    SpotifyClone.Musicas AS M
    ON H.musica_id = M.musica_id
WHERE U.plano_id = 1 OR U.plano_id = 4
GROUP BY M.nome
ORDER BY M.nome;