CREATE TABLE IF NOT EXISTS ctg_tipoDNI(
	id int not null auto_increment,
    tipo varchar(30),
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_tipoDNI VALUES (1,'Cedula');
INSERT INTO ctg_tipoDNI VALUES (2,'Pasaporte');
INSERT INTO ctg_tipoDNI VALUES (3,'Otro');

