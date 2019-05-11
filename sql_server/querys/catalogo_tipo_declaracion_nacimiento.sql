CREATE TABLE IF NOT EXISTS ctg_tipoDeclaracion(
	id int not null auto_increment,
    iso varchar(3) not null,
    tipo varchar(30) not null,
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_tipoDeclaracion VALUES(1,'OPT','Oportuna');
INSERT INTO ctg_tipoDeclaracion VALUES(2,'TRD','Tardia');
