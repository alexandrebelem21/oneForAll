SELECT
    A.nome AS artista,
    Ab.nome AS album,
    COUNT(S.artista_id) AS seguidores
FROM
    SpotifyClone.Artistas AS A
INNER JOIN
    SpotifyClone.Albuns AS Ab
    ON A.artista_id = Ab.artista_id
INNER JOIN
    SpotifyClone.Seguindo_artistas AS S
    ON S.artista_id = A.artista_id
GROUP BY A.nome, Ab.nome
ORDER BY seguidores DESC, artista ASC, album ASC;