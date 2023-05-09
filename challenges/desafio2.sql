SELECT 
	(SELECT COUNT(*) FROM SpotifyClone.Musicas) AS cancoes, 
	(SELECT COUNT(*) FROM SpotifyClone.Artistas) AS artistas, 
	(SELECT COUNT(*) FROM SpotifyClone.Albuns) AS albuns;