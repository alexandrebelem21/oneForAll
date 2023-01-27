SELECT
    M.nome as cancao,
    COUNT(H.musica_id) as reproducoes
FROM
    SpotifyClone.Musicas AS M
INNER JOIN
    SpotifyClone.Hist_reproducao AS H
  ON M.musica_id = H.musica_id
GROUP BY M.nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;