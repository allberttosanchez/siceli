CREATE SCHEMA IF NOT EXISTS siceli_asignaturas;

USE siceli_asignaturas;
# Esta tabla contiene un catalogo de las posibles asignaturas impartida en un centro educativo.
CREATE TABLE IF NOT EXISTS ctg_asignaturas(
	id int not null auto_increment,
    nombre varchar(100),    
    descripcion text default null,
    primary key (id)
) engine InnoDB;

insert into ctg_asignaturas (nombre) values
('Biología'),('Educación Artística'),('Educación Comercial'),('Educación Física'),('Educación Moral y Civica'),
('Física'),('Formación Integral Humana y Religiosa'),('Francés I'),('Francés II'),('Francés III'),
('Francés IV'),('Francés V'),('Francés VI'),('Geografía e Historia de América y de los Pueblos Caribe'),('Historia de la Civilización y Geografía Mundial'),
('Historia y Geografía Dominicana Siglos XIX y XX'),('Informática'),('Inglés I'),('Inglés II'),('Inglés III'),
('Inglés IV'),('Inglés V'),('Inglés VI'),('Introducción a la Informática'),('Lengua Española I'),('Lengua Española II'),
('Lengua Española III'),('Lengua Española IV'),('Lengua Española V'),('Lengua Española VI'),('Lengua Española VII'),('Lengua Española VIII'),
('Matemática I'),('Matemática II'),('Matemática III'),('Matemática IV'),('Matemática V'),('Matemática VI'),
('Matemática VII'),('Matemática VIII'),('Nociones de Electricidad'),('Química'),('República Dominicana Hoy');


# esta tabla almacena la informacion de las asignaturas respecto a quienes pueden impartirla.
CREATE TABLE IF NOT EXISTS asgt_rol_asignaturas(
	id int not null auto_increment,
    idAsignatura int not null, # fk    
    rolesPermitidos int not null default 9, # fk    
    areaProfesional int default null, # fk
    descripcion text default null,
    primary key (id),
    
    constraint asignaturas_ctg
    foreign key (idAsignatura)
    references ctg_asignaturas(id),
    
    constraint asignaturas_roles
    foreign key (rolesPermitidos)
    references siceli_usersdb.ctg_roles(id), # vinculado a la base de datos siceli_usersdb
    
    constraint asignaturas_areaProfesional
    foreign key (areaProfesional)
    references siceli_usersdb.ctg_area_profesional(id)    # vinculado a la base de datos siceli_usersdb
) engine innoDB;

