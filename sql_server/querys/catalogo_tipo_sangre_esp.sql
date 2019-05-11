CREATE TABLE IF NOT EXISTS ctg_tipoSangre(
	id INT NOT NULL auto_increment,
    iso varchar(3) not null,
    tipo varchar(30) not null,
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_tipoSangre VALUES (1,'A-','Sangre A Negativo');
INSERT INTO ctg_tipoSangre VALUES (2,'A+','Sangre A Positivo');
INSERT INTO ctg_tipoSangre VALUES (3,'B-','Sangre B Negativo');
INSERT INTO ctg_tipoSangre VALUES (4,'B+','Sangre B Positivo');
INSERT INTO ctg_tipoSangre VALUES (5,'AB-','Sangre AB Negativo');
INSERT INTO ctg_tipoSangre VALUES (6,'AB+','Sangre AB Positivo');
INSERT INTO ctg_tipoSangre VALUES (7,'O-','Sangre O Negativo');
INSERT INTO ctg_tipoSangre VALUES (8,'O+','Sangre O Positivo');
