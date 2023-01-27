SELECT
    COUNT(H.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.Hist_reproducao AS H
INNER JOIN
    SpotifyClone.Usuarios AS U
    ON H.usuario_id = U.usuario_id
WHERE U.nome = 'Barbara Liskov';