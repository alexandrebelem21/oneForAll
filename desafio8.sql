SELECT
    A.nome AS artista,
    Ab.nome AS album
FROM
    SpotifyClone.Artistas AS A
INNER JOIN
    SpotifyClone.Albuns AS Ab
    ON A.artista_id = Ab.artista_id
WHERE A.nome = 'Elis Regina'
GROUP BY A.nome, Ab.nome
ORDER BY album ASC;