SELECT
    COUNT(DISTINCT M.musica_id) as cancoes,
    COUNT(DISTINCT A.artista_id) as artistas,
    COUNT(DISTINCT Ab.album_id) as albuns
FROM
    SpotifyClone.Musicas AS M
INNER JOIN
    SpotifyClone.Artistas AS A
INNER JOIN
    SpotifyClone.Albuns AS Ab;