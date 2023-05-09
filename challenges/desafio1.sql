DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Planos 
(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano	VARCHAR(512) NOT NULL,
    valor_plano	VARCHAR(512) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.Planos  (plano, valor_plano) VALUES ('gratuito', '0');
INSERT INTO SpotifyClone.Planos  (plano, valor_plano) VALUES ('familiar', '7,99');
INSERT INTO SpotifyClone.Planos  (plano, valor_plano) VALUES ('universitário', '5,99');
INSERT INTO SpotifyClone.Planos  (plano, valor_plano) VALUES ('pessoal', '6,99');

CREATE TABLE SpotifyClone.Usuario 
(
    pessoa_usuaria_id	INT PRIMARY KEY,
    nome_pessoa_usuaria	VARCHAR(512) NOT NULL,
    idade	INT,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Planos (plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('1', 'Barbara Liskov', '82', 1, '2019-10-20');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('2', 'Robert Cecil Martin', '58', 1, '2017-01-06');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('3', 'Ada Lovelace', '37', 2, '2017-12-30');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('4', 'Martin Fowler', '46', 2, '2017-01-17');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('5', 'Sandi Metz', '58', 2, '2018-04-29');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('6', 'Paulo Freire', '19', 3, '2018-02-14');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('7', 'Bell Hooks', '26', 3, '2018-01-05');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('8', 'Christopher Alexander', '85', 4, '2019-06-05');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('9', 'Judith Butler', '45', 4, '2020-05-13');
INSERT INTO SpotifyClone.Usuario  (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('10', 'Jorge Amado', '58', 4, '2017-02-17');

CREATE TABLE SpotifyClone.Artistas 
(
    artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    artista	VARCHAR(512) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Beyoncé');
INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Queen');
INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Elis Regina');
INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Baco Exu do Blues');
INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Blind Guardian');
INSERT INTO SpotifyClone.Artistas  (artista) VALUES ('Nina Simone');

CREATE TABLE SpotifyClone.Albuns
(
    album_id	INT PRIMARY KEY,
    album 	VARCHAR(512) NOT NULL,
    artista_id	INT NOT NULL,
    ano_lancamento	INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('1', 'Renaissance', '1', '2022');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('2', 'Jazz', '2', '1978');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('3', 'Hot Space', '2', '1982');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('4', 'Falso Brilhante', '3', '1998');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('5', 'Vento de Maio', '3', '2001');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('6', 'QVVJFA?', '4', '2003');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('7', 'Somewhere Far Beyond', '5', '2007');
INSERT INTO SpotifyClone.Albuns (album_id, album , artista_id, ano_lancamento) VALUES ('8', 'I Put A Spell On You', '6', '2012');

CREATE TABLE SpotifyClone.Musicas 
(
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    musica	VARCHAR(512) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albuns (album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('BREAK MY SOUL', '279', '1');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ("'VIRGO\'S GROOVE", '369', '1');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('ALIEN SUPERSTAR', '116', '1');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ("'Don\'t Stop Me Now", '203', '2');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('Under Pressure', '152', '3');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('Como Nossos Pais', '105', '4');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('O Medo de Amar é o Medo de Ser Livre', '207', '5');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('Samba em Paris', '267', '6');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ("'The Bard\'s Song", '244', '7');
INSERT INTO SpotifyClone.Musicas (musica, duracao_segundos, album_id) VALUES ('Feeling Good', '100', '8');

CREATE TABLE SpotifyClone.Seguindo_artistas 
(
    pessoa_usuaria_id INT,
    artista_id	INT,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES Usuario (pessoa_usuaria_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id),
    CONSTRAINT PRIMARY KEY (pessoa_usuaria_id, artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('1', '1');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('1', '2');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('1', '3');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('2', '1');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('2', '3');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('3', '2');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('4', '4');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('5', '5');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('5', '6');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('6', '1');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('6', '6');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('7', '6');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('9', '3');
INSERT INTO SpotifyClone.Seguindo_artistas  (pessoa_usuaria_id, artista_id) VALUES ('10', '2');

CREATE TABLE SpotifyClone.Historico_reproducao 
(
    musica_id	INT NOT NULL,
    pessoa_usuaria_id	INT NOT NULL,
    data_reproducao	DATETIME NOT NULL,
    FOREIGN KEY (musica_id) REFERENCES Musicas (musica_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES Usuario (pessoa_usuaria_id),
    CONSTRAINT PRIMARY KEY (musica_id, pessoa_usuaria_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('8', '1', '2022-02-28 10:45:55');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('2', '1', '2020-05-02 05:30:35');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('10', '1', '2020-03-06 11:22:33');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('10', '2', '2022-08-05 08:05:17');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('7', '2', '2020-01-02 07:40:33');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('10', '3', '2020-11-13 16:55:13');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('2', '3', '2020-12-05 18:38:30');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('8', '4', '2021-08-15 17:10:10');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('8', '5', '2022-01-09 01:44:33');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('5', '5', '2020-08-06 15:23:43');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('7', '6', '2017-01-24 00:31:17');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('1', '6', '2017-10-12 12:35:20');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('4', '7', '2011-12-15 22:30:49');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('4', '8', '2012-03-17 14:56:41');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('9', '9', '2022-02-24 21:14:22');
INSERT INTO SpotifyClone.Historico_reproducao  (musica_id, pessoa_usuaria_id, data_reproducao) VALUES ('3', '10', '2015-12-13 08:30:22');