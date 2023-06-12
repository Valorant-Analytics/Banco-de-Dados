CREATE DATABASE valorantAnalytic;
-- N ESQUEÇA DE TROCAR O ROOT E SENHA NA DATABASE > CONFIG.JS
USE valorantAnalytic;

DROP TABLE usuario;
DROP TABLE dados;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
cpf CHAR(11),
senha VARCHAR(8),
fkUsuario INT,
	FOREIGN KEY (fkDados) REFERENCES dados(idDados)
);

CREATE TABLE dados(
idDados INT PRIMARY KEY AUTO_INCREMENT,
abates INT,
mortes INT,
vitorias INT,
partidas INT
);

SELECT * FROM usuario;
SELECT * FROM dados;

TRUNCATE usuario;
TRUNCATE dados;

DROP TABLE usuario;
DROP TABLE dados;
