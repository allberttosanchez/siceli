CREATE SCHEMA IF NOT EXISTS siceli_record_db;

use siceli_record_db;

-- CATEGORIAS / CATALOGOS -------------------------------------------------
-- ------------------------------------------------------------------------

create table if not exists ctg_estatus_calificaciones(
	id int not null auto_increment,
    estatus varchar(10) default null,
    descripcion varchar(100) default null,
    primary key(id)
) engine InnoDB;

insert into ctg_estatus_calificaciones (id,estatus,descripcion) values
(1,'PROMOVIDO','El estudiante aprobo la sesion de clase.'),
(2,'APLAZADO','El estudiante no obtuvo la calificion para aprobar la sesion, sin embargo tiene otra oportunidad.'),
(3,'REPROBADO','El estudiante ha reprobado la sesion de clases.');


-- TABLAS ------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------

# Esta tabla contiene el record de calificaciones por sesion de clase de cada estudiante.
CREATE TABLE IF NOT exists rec_registro_calificaciones(
	id int not null auto_increment,
    idSeccionEscolar int not null,  # fk
    idSesionClase int not null, # fk
    idEstudiante int not null, # fk
    Calificacion1 double(5,2) default null,
    Calificacion2 double(5,2) default null,
    Calificacion3 double(5,2) default null,
    Calificacion4 double(5,2) default null,
    ExFinal double(5,2) default null,
    ExCompletivo double(5,2) default null,
    ExExtraordinario double(5,2) default null,    
    primary key(id),
    
    # las foreign key estan relacionada con la base de datos siceli_sesionesdb
    constraint regCalif_sesiondbSeccionEscolar
    foreign key (idSeccionEscolar)
    references siceli_sesionesdb.ses_seccion_escolar(id),
    
    constraint regCalif_sesiondbSesionClase
    foreign key (idSesionClase)
    references siceli_sesionesdb.ses_sesion_clase(id),
    
    constraint regCalif_sesiondbEstudiantesInscritos
    foreign key (idEstudiante)
    references siceli_sesionesdb.ses_estudiantes_inscritos(id)
) engine InnoDB;


-- --------------
# Esta tabla contiene la condicion final de la sesion de clase del estudiante.
# ESTA TABLA DE COMPLETA MEDIANTE TRIGGER
create table if not exists rec_estatus_calificaciones(
	id int not null auto_increment,
    idRegCalificaciones int not null, # fk
    promedio double(5,2) default null, # fk
    IdEstatus int(1) default null, # fk -> 1: PROMOVIDO 2:APLAZADO 3:REPROBADO
    primary key(id),
    
    constraint estatusCalif_recRegistroCalif
    foreign key (idRegCalificaciones)
    references rec_registro_calificaciones(id),
    
    constraint estatusCalif_ctgEstatusCalif
    foreign key (idEstatus)
    references ctg_estatus_calificaciones(id)
) engine InnoDB;

