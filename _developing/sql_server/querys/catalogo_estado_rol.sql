
create table if not exists ctg_estado_rol(
	id int not null auto_increment,
    estado varchar(30) not null,
    primary key(id)    
) engine InnoDB;

INSERT INTO ctg_estado_rol VALUES (default,'Activo');
INSERT INTO ctg_estado_rol VALUES (default,'Inactivo');
INSERT INTO ctg_estado_rol VALUES (default,'Retirado');
INSERT INTO ctg_estado_rol VALUES (default,'Desertor');
INSERT INTO ctg_estado_rol VALUES (default,'Completado');
INSERT INTO ctg_estado_rol VALUES (default,'Otro');