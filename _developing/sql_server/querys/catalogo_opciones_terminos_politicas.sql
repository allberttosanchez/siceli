create table if not exists ctg_terminosPoliticas(
	id int not null auto_increment,
    opc varchar(20) default null,
    primary key(id)
) engine InnoDB;

insert into ctg_terminosPoliticas (opc) values ('aceptado'), ('rechazado');
