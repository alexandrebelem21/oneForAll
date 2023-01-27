SELECT
    U.nome as usuario,
    IF( YEAR(MAX(H.reproducao_data)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.Usuarios AS U
INNER JOIN
    SpotifyClone.Hist_reproducao AS H
  ON U.usuario_id = H.usuario_id
GROUP BY U.nome
ORDER BY U.nome ASC;