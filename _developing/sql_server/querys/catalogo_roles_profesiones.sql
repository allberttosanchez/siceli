CREATE TABLE IF NOT EXISTS ctg_roles(
	id int not null auto_increment,
    rol varchar(30) not null,
	primary key(id)
) engine InnoDB;

INSERT INTO ctg_roles VALUES (1, 'Coordinador/a');
INSERT INTO ctg_roles VALUES (2, 'DBA'); -- Data Base Administrator
INSERT INTO ctg_roles VALUES (3, 'Digitador');
INSERT INTO ctg_roles VALUES (4, 'Director/a');
INSERT INTO ctg_roles VALUES (5, 'Estudiante');
INSERT INTO ctg_roles VALUES (6, 'Monitor/a');
INSERT INTO ctg_roles VALUES (7, 'Orientador/a');
INSERT INTO ctg_roles VALUES (8, 'Portero');
INSERT INTO ctg_roles VALUES (9, 'Profesor/a');
INSERT INTO ctg_roles VALUES (10,'Psicologo/a');
INSERT INTO ctg_roles VALUES (11,'Secretario/a Docente');
INSERT INTO ctg_roles VALUES (12,'Secretario/a Auxiliar');
INSERT INTO ctg_roles VALUES (13,'Seguridad');
INSERT INTO ctg_roles VALUES (14,'Sub-Director/a');
INSERT INTO ctg_roles VALUES (15,'Otro');
