CREATE TABLE IF NOT EXISTS ctg_sexo (
id int NOT NULL AUTO_INCREMENT,
sexo varchar(30) NOT NULL,
PRIMARY KEY (id)
) ENGINE InnoDB;

INSERT INTO ctg_sexo VALUES (default,'MASCULINO');
INSERT INTO ctg_sexo VALUES (default,'FEMENINO');

CREATE TABLE IF NOT EXISTS ctg_genero (
id int NOT NULL AUTO_INCREMENT,
sexo varchar(30) NOT NULL,
PRIMARY KEY (id)
) ENGINE InnoDB;

INSERT INTO ctg_genero VALUES (default,'HOMBRE');
INSERT INTO ctg_genero VALUES (default,'MUJER');
INSERT INTO ctg_genero VALUES (default,'OTRO');