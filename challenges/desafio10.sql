CREATE TABLE SpotifyClone.Musicas_favoritas (
    pessoa_usuaria_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(pessoa_usuaria_id, musica_id),
    FOREIGN KEY (pessoa_usuaria_id)
        REFERENCES Usuario (pessoa_usuaria_id),
	FOREIGN KEY (musica_id)
        REFERENCES Musicas (musica_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Musicas_favoritas(pessoa_usuaria_id, musica_id) VALUES 
('1', "3"),
('1', "6"),
('1', "10"),
('2', "4"),
('3', "1"),
('3', "3"),
('4', "7"),
('4', "4"),
('5', "10"),
('5', "2"),
('8', "4"),
('9', "7"),
('10', "3");