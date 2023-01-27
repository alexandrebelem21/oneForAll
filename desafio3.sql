SELECT
    U.nome as usuario,
    COUNT(DISTINCT H.musica_id) as qt_de_musicas_ouvidas,
    ROUND((SUM(M.duracao)/60),2) as total_minutos
FROM
    SpotifyClone.Usuarios AS U
INNER JOIN
    SpotifyClone.Hist_reproducao AS H
  ON U.usuario_id = H.usuario_id
INNER JOIN
    SpotifyClone.Musicas AS M
  ON H.musica_id = M.musica_id
GROUP BY U.nome
ORDER BY U.nome ASC;