CREATE DATABASE SpotParking_VPI;

USE SpotParking_VPI;

-- CRIANDO TABELAS:

-- TABELAS DE FUNCIONAMENTO DO SISTEMA/DASHBOARD:

CREATE TABLE Vaga (
	idVaga INT PRIMARY KEY AUTO_INCREMENT,
	piso CHAR(10) NOT NULL,
	posicao CHAR(10) NOT NULL
);

CREATE TABLE Fluxo (
	idFluxo INT PRIMARY KEY AUTO_INCREMENT,
	dataHora DATETIME NOT NULL,
	movimentacao CHAR(10) NOT NULL,
	contagem INT NOT NULL
);

CREATE TABLE Sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(45) NOT NULL,
	fkVaga INT NOT NULL,
	CONSTRAINT fkVaga FOREIGN KEY (fkVaga) REFERENCES Vaga(idVaga)
);

CREATE TABLE Ocupacao (
	idOcupacao INT  AUTO_INCREMENT NOT NULL,
	fkSensor INT NOT NULL,
	entrada DATETIME NOT NULL,
	saida DATETIME,
	status_vaga VARCHAR(20) NOT NULL,
	CONSTRAINT PkComposta PRIMARY KEY (idOcupacao, fkSensor)
);

INSERT INTO Vaga (piso, posicao) VALUES ('Térreo', 'A1');

INSERT INTO Sensor (tipo, fkVaga) VALUES ('ultrasonico', 1);

-- TESTAR INSERÇÕES AQUI:

select * from Ocupacao order by entrada desc; 



