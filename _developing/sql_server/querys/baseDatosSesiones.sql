CREATE SCHEMA IF NOT EXISTS siceli_sesionesDB; #SI-STEMA DE C-ONTROL E-STUDIANTIL LI-BRE
	
USE siceli_sesionesDB;

#------- CATEGORIAS---------------------------------------------------------
#---------------------------------------------------------------------------
# Esta tabla es un catalogo que contiene los periodos de docencia.
CREATE TABLE IF NOT EXISTS ctg_periodo_escolar(
	id int not null auto_increment,
    tipoPeriodo varchar(30) default null,
    CantDias int default null,
    duracion int default null,
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_periodo_escolar (tipoPeriodo,CantDias,duracion) VALUES 
('Mensual',30,(30*24*60*60)),
('Bimestral',60,(60*24*60*60)),
('Trimestral',90,(90*24*60*60)),
('Cuatrimestral',120,(120*24*60*60)),
('Semestral',180,(180*24*60*60)),
('Anual',365,(365*24*60*60));

# Esta tabla es un catalogo que contiene los periodos de años escolares (inicio y termino).
CREATE TABLE IF NOT EXISTS ctg_anno_escolar(
	id int not null auto_increment,    
    annoInicio int(4) default null,
    annoTermino int(4) default null,    
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_anno_escolar (annoInicio,annoTermino) VALUES 
('2019','2020'),('2020','2021'),('2021','2022'),('2022','2023'),('2023','2024'),
('2024','2025'),('2025','2026'),('2026','2027'),('2027','2028'),('2028','2029'),
('2029','2030'),('2030','2031'),('2031','2032'),('2032','2033'),('2033','2034'),
('2034','2035'),('2035','2036'),('2036','2037'),('2037','2038'),('2038','2039'),
('2039','2040'),('2040','2041'),('2041','2042'),('2042','2043'),('2043','2044'),
('2044','2045'),('2045','2046'),('2046','2047'),('2047','2048'),('2048','2049'),
('2049','2050'),('2050','2051');

# Esta tabla es un catalogo que contiene las modalidades educativas: general, prepara, extendida.
CREATE TABLE IF NOT EXISTS ctg_modalidad_escolar(
	id int not null auto_increment,    
    modalidadEscolar varchar(30) default null,    
    primary key(id)
) engine InnoDB;

insert into ctg_modalidad_escolar (modalidadEscolar) values
('General'),('Jornada Extendida'),('PREPARA'),('Otra');

# Esta tabla es un catalogo que contiene las tandas educativas matutina, verpetina, nocturna, sabatina, dominical.
CREATE TABLE IF NOT EXISTS ctg_tanda_escolar(
	id int not null auto_increment,    
    tandaEscolar varchar(30) default null,    
    primary key(id)
) engine InnoDB;

insert into ctg_tanda_escolar (tandaEscolar) values
('Matutina'),('Verpestina'),('Nocturna'),('Sabatina'),('Dominical');

# Esta tabla contiene un catalogo de los grados impartidos en el centro educativo.
CREATE TABLE IF NOT EXISTS ctg_grados(
	id int not null auto_increment,
    iso varchar(4) default null,
    nombre varchar(20) default null,
    primary key(id)
) engine InnoDB;

insert into ctg_grados (iso,nombre) values
('KIN','KINDER'),('PRE','PRE-PRIMERO'),('1RO','PRIMERO'),('2DO','SEGUNDO'),('3RO','TERCERO'),
('4TO','CUARTO'),('5TO','QUINTO'),('6TO','SEXTO'),('7MO','SEPTIMO'),('8VO','OCTAVO'),
('9NO','NOVENO'),('10MO','DECIMO'),('11VO','ONCEAVO'),('12VO','DOCEAVO');

# Esta tabla contienue un catalogo con los sectores escolares: privado y semi-privado.
CREATE TABLE IF NOT EXISTS ctg_sector_escolar(
	id int not null auto_increment,
    sectorEscolar varchar(20),
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_sector_escolar (sectorEscolar) values
('PUBLICO'),('SEMI-PRIVADO');

# Esta tabla contienue un catalogo con los zonas escolares: rural y urbana.
CREATE TABLE IF NOT EXISTS ctg_zona_escolar(
	id int not null auto_increment,
    zonaEscolar varchar(20),
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_zona_escolar (zonaEscolar) values
('RURAL'),('URBANA');

# Esta tabla contiene un catalogo con las secciones fisicas de centro educativo.
CREATE TABLE IF NOT EXISTS ctg_seccion_escolar(
	id int not null auto_increment,
    nombre varchar(1) default null,
    primary key (id)
) engine InnoDB;

insert into ctg_seccion_escolar (nombre) values
('A'),('B'),('C'),('D'),('E'),('F'),('G'),('H'),('I'),('J'),('K'),('L'),
('M'),('N'),('O'),('P'),('Q'),('R'),('S'),('T'),('U'),('V'),('W'),('X'),
('Y'),('Z');

# Esta tabla contiene un catalogo con las sesiones en dias del centro educativo.
CREATE TABLE IF NOT EXISTS ctg_periodo_sesiones(
	id int not null auto_increment,
    idPeriodoEscolar int not null,
    nombre varchar(30) default null,
    primary key (id),
        
    constraint periodo_ses_peri_escolar
    foreign key (idPeriodoEscolar)
    references ctg_periodo_escolar(id)
) engine InnoDB;

insert into ctg_periodo_sesiones (id,idPeriodoEscolar,nombre) values
(1,1,'SEMANAL'),(2,1,'1RA SEMANA'),(3,1,'2DA SEMANA'),(4,1,'3RA SEMANA'),(5,1,'4TA SEMANA'),(6,1,'5TA SEMANA'),
(7,1,'MENSUAL'),(8,1,'1ER MES'),(9,1,'2DO MES'),(10,1,'3ER MES'),(11,1,'4TO MES'),(12,1,'5TO MES'),(13,1,'6TO MES'),
(14,1,'7MO MES'),(15,1,'8VO MES'),(16,1,'9NO MES'),(17,1,'10MO MES'),(18,1,'11VO MES'),(19,1,'12VO MES'),
(20,2,'BIMESTRAL'),(21,2,'1ER BIMESTRE'),(22,2,'2DO BIMESTRE'),(23,2,'3ER BIMESTRE'),(24,2,'4TO BIMESTRE'),(25,2,'5TO BIMESTRE'),(26,2,'6TO BIMESTRE'),
(27,3,'TRIMESTRAL'),(28,3,'1ER TRIMESTRE'),(29,3,'2DO TRIMESTRE'),(30,3,'3ER TRIMESTRE'),(31,3,'4TO TRIMESTRE'),
(32,4,'CUATRIMESTRAL'),(33,4,'1ER CUATRIMESTRE'), (34,4,'2DO CUATRIMESTRE'),(35,4,'3ER CUATRIMESTRE'),
(36,5,'SEMESTRAL'),(37,5,'1ER SEMESTRE'),(38,5,'2DO SEMESTRE'),
(39,6,'ANUAL');

# Esta tabla contiene un catalogo con lo dias de la semana relacionado al periodo de sesiones.
create table if not exists ctg_periodo_semanal_sesion(
	id int not null auto_increment,
    idPeriodoSesiones int not null,
    dia varchar(30) default null,
    primary key (id),
    
    constraint periodo_semanal_sesiones
    foreign key (idPeriodoSesiones)
    references ctg_periodo_sesiones(id)
) engine InnoDB;

insert into ctg_periodo_semanal_sesion (idPeriodoSesiones,dia) values
(1,'DOMINGO'),(1,'LUNES'),(1,'MARTES'),(1,'MIERCOLES'),(1,'JUEVES'),(1,'VIERNES'),(1,'SABADO');

# Esta tabla contiene un catalogo con los horarios disponible por dia de la semana.
create table if not exists ctg_horario_diario_sesion(
	id int not null auto_increment,
    idDiaSemana int not null,
    horario time default '000000',
    primary key (id),
    
    constraint horario_sesiones_semanal
    foreign key (idDiaSemana)
    references ctg_periodo_semanal_sesion(id)
) engine InnoDB;

INSERT INTO ctg_horario_diario_sesion (idDiaSemana,horario) values
(1,000000),(1,001500),(1,003000),(1,004500),(1,010000),(1,011500),(1,013000),(1,014500),(1,020000),(1,021500),(1,023000),(1,024500),(1,030000),(1,031500),(1,033000),(1,034500),(1,040000),(1,041500),(1,043000),(1,044500),
(1,050000),(1,051500),(1,053000),(1,054500),(1,060000),(1,061500),(1,063000),(1,064500),(1,070000),(1,071500),(1,073000),(1,074500),(1,080000),(1,081500),(1,083000),(1,084500),(1,090000),(1,091500),(1,093000),(1,094500),
(1,100000),(1,101500),(1,103000),(1,104500),(1,110000),(1,111500),(1,113000),(1,114500),(1,120000),(1,121500),(1,123000),(1,124500),(1,130000),(1,131500),(1,133000),(1,134500),(1,140000),(1,141500),(1,143000),(1,144500),
(1,150000),(1,151500),(1,153000),(1,154500),(1,160000),(1,161500),(1,163000),(1,164500),(1,160000),(1,171500),(1,173000),(1,174500),(1,180000),(1,181500),(1,183000),(1,184500),(1,190000),(1,191500),(1,193000),(1,194500),
(1,200000),(1,201500),(1,203000),(1,204500),(1,210000),(1,211500),(1,213000),(1,214500),(1,220000),(1,221500),(1,223000),(1,224500),(1,230000),(1,231500),(1,233000),(1,234500),
(2,000000),(2,001500),(2,003000),(2,004500),(2,010000),(2,011500),(2,013000),(2,014500),(2,020000),(2,021500),(2,023000),(2,024500),(2,030000),(2,031500),(2,033000),(2,034500),(2,040000),(2,041500),(2,043000),(2,044500),
(2,050000),(2,051500),(2,053000),(2,054500),(2,060000),(2,061500),(2,063000),(2,064500),(2,070000),(2,071500),(2,073000),(2,074500),(2,080000),(2,081500),(2,083000),(2,084500),(2,090000),(2,091500),(2,093000),(2,094500),
(2,100000),(2,101500),(2,103000),(2,104500),(2,110000),(2,111500),(2,113000),(2,114500),(2,120000),(2,121500),(2,123000),(2,124500),(2,130000),(2,131500),(2,133000),(2,134500),(2,140000),(2,141500),(2,143000),(2,144500),
(2,150000),(2,151500),(2,153000),(2,154500),(2,160000),(2,161500),(2,163000),(2,164500),(2,160000),(2,171500),(2,173000),(2,174500),(2,180000),(2,181500),(2,183000),(2,184500),(2,190000),(2,191500),(2,193000),(2,194500),
(2,200000),(2,201500),(2,203000),(2,204500),(2,210000),(2,211500),(2,213000),(2,214500),(2,220000),(2,221500),(2,223000),(2,224500),(2,230000),(2,231500),(2,233000),(2,234500),
(3,000000),(3,001500),(3,003000),(3,004500),(3,010000),(3,011500),(3,013000),(3,014500),(3,020000),(3,021500),(3,023000),(3,024500),(3,030000),(3,031500),(3,033000),(3,034500),(3,040000),(3,041500),(3,043000),(3,044500),
(3,050000),(3,051500),(3,053000),(3,054500),(3,060000),(3,061500),(3,063000),(3,064500),(3,070000),(3,071500),(3,073000),(3,074500),(3,080000),(3,081500),(3,083000),(3,084500),(3,090000),(3,091500),(3,093000),(3,094500),
(3,100000),(3,101500),(3,103000),(3,104500),(3,110000),(3,111500),(3,113000),(3,114500),(3,120000),(3,121500),(3,123000),(3,124500),(3,130000),(3,131500),(3,133000),(3,134500),(3,140000),(3,141500),(3,143000),(3,144500),
(3,150000),(3,151500),(3,153000),(3,154500),(3,160000),(3,161500),(3,163000),(3,164500),(3,160000),(3,171500),(3,173000),(3,174500),(3,180000),(3,181500),(3,183000),(3,184500),(3,190000),(3,191500),(3,193000),(3,194500),
(3,200000),(3,201500),(3,203000),(3,204500),(3,210000),(3,211500),(3,213000),(3,214500),(3,220000),(3,221500),(3,223000),(3,224500),(3,230000),(3,231500),(3,233000),(3,234500),
(4,000000),(4,001500),(4,003000),(4,004500),(4,010000),(4,011500),(4,013000),(4,014500),(4,020000),(4,021500),(4,023000),(4,024500),(4,030000),(4,031500),(4,033000),(4,034500),(4,040000),(4,041500),(4,043000),(4,044500),
(4,050000),(4,051500),(4,053000),(4,054500),(4,060000),(4,061500),(4,063000),(4,064500),(4,070000),(4,071500),(4,073000),(4,074500),(4,080000),(4,081500),(4,083000),(4,084500),(4,090000),(4,091500),(4,093000),(4,094500),
(4,100000),(4,101500),(4,103000),(4,104500),(4,110000),(4,111500),(4,113000),(4,114500),(4,120000),(4,121500),(4,123000),(4,124500),(4,130000),(4,131500),(4,133000),(4,134500),(4,140000),(4,141500),(4,143000),(4,144500),
(4,150000),(4,151500),(4,153000),(4,154500),(4,160000),(4,161500),(4,163000),(4,164500),(4,160000),(4,171500),(4,173000),(4,174500),(4,180000),(4,181500),(4,183000),(4,184500),(4,190000),(4,191500),(4,193000),(4,194500),
(4,200000),(4,201500),(4,203000),(4,204500),(4,210000),(4,211500),(4,213000),(4,214500),(4,220000),(4,221500),(4,223000),(4,224500),(4,230000),(4,231500),(4,233000),(4,234500),
(5,000000),(5,001500),(5,003000),(5,004500),(5,010000),(5,011500),(5,013000),(5,014500),(5,020000),(5,021500),(5,023000),(5,024500),(5,030000),(5,031500),(5,033000),(5,034500),(5,040000),(5,041500),(5,043000),(5,044500),
(5,050000),(5,051500),(5,053000),(5,054500),(5,060000),(5,061500),(5,063000),(5,064500),(5,070000),(5,071500),(5,073000),(5,074500),(5,080000),(5,081500),(5,083000),(5,084500),(5,090000),(5,091500),(5,093000),(5,094500),
(5,100000),(5,101500),(5,103000),(5,104500),(5,110000),(5,111500),(5,113000),(5,114500),(5,120000),(5,121500),(5,123000),(5,124500),(5,130000),(5,131500),(5,133000),(5,134500),(5,140000),(5,141500),(5,143000),(5,144500),
(5,150000),(5,151500),(5,153000),(5,154500),(5,160000),(5,161500),(5,163000),(5,164500),(5,160000),(5,171500),(5,173000),(5,174500),(5,180000),(5,181500),(5,183000),(5,184500),(5,190000),(5,191500),(5,193000),(5,194500),
(5,200000),(5,201500),(5,203000),(5,204500),(5,210000),(5,211500),(5,213000),(5,214500),(5,220000),(5,221500),(5,223000),(5,224500),(5,230000),(5,231500),(5,233000),(5,234500),
(6,000000),(6,001500),(6,003000),(6,004500),(6,010000),(6,011500),(6,013000),(6,014500),(6,020000),(6,021500),(6,023000),(6,024500),(6,030000),(6,031500),(6,033000),(6,034500),(6,040000),(6,041500),(6,043000),(6,044500),
(6,050000),(6,051500),(6,053000),(6,054500),(6,060000),(6,061500),(6,063000),(6,064500),(6,070000),(6,071500),(6,073000),(6,074500),(6,080000),(6,081500),(6,083000),(6,084500),(6,090000),(6,091500),(6,093000),(6,094500),
(6,100000),(6,101500),(6,103000),(6,104500),(6,110000),(6,111500),(6,113000),(6,114500),(6,120000),(6,121500),(6,123000),(6,124500),(6,130000),(6,131500),(6,133000),(6,134500),(6,140000),(6,141500),(6,143000),(6,144500),
(6,150000),(6,151500),(6,153000),(6,154500),(6,160000),(6,161500),(6,163000),(6,164500),(6,160000),(6,171500),(6,173000),(6,174500),(6,180000),(6,181500),(6,183000),(6,184500),(6,190000),(6,191500),(6,193000),(6,194500),
(6,200000),(6,201500),(6,203000),(6,204500),(6,210000),(6,211500),(6,213000),(6,214500),(6,220000),(6,221500),(6,223000),(6,224500),(6,230000),(6,231500),(6,233000),(6,234500),
(7,000000),(7,001500),(7,003000),(7,004500),(7,010000),(7,011500),(7,013000),(7,014500),(7,020000),(7,021500),(7,023000),(7,024500),(7,030000),(7,031500),(7,033000),(7,034500),(7,040000),(7,041500),(7,043000),(7,044500),
(7,050000),(7,051500),(7,053000),(7,054500),(7,060000),(7,061500),(7,063000),(7,064500),(7,070000),(7,071500),(7,073000),(7,074500),(7,080000),(7,081500),(7,083000),(7,084500),(7,090000),(7,091500),(7,093000),(7,094500),
(7,100000),(7,101500),(7,103000),(7,104500),(7,110000),(7,111500),(7,113000),(7,114500),(7,120000),(7,121500),(7,123000),(7,124500),(7,130000),(7,131500),(7,133000),(7,134500),(7,140000),(7,141500),(7,143000),(7,144500),
(7,150000),(7,151500),(7,153000),(7,154500),(7,160000),(7,161500),(7,163000),(7,164500),(7,160000),(7,171500),(7,173000),(7,174500),(7,180000),(7,181500),(7,183000),(7,184500),(7,190000),(7,191500),(7,193000),(7,194500),
(7,200000),(7,201500),(7,203000),(7,204500),(7,210000),(7,211500),(7,213000),(7,214500),(7,220000),(7,221500),(7,223000),(7,224500),(7,230000),(7,231500),(7,233000),(7,234500);


 # Esta tabla contien el catalogo de duracion en tiempo horas de las sesiones.
 create table if not exists ctg_duracion_sesion_clase(
	id int not null auto_increment,
    duracionHoras time default null, # fk -> 1 hora = 50 min
    primary key (id)
) engine InnoDB;

insert into ctg_duracion_sesion_clase (duracionHoras) values
(003000),(004500),(010000),(011500),(013000),(014500),
(020000),(021500),(023000),(024500),(030000),(031500),
(033000),(034500),(040000),(041500),(043000),(044500),
(050000);

#------- TABLAS ------------------------------------------------------------
#---------------------------------------------------------------------------

# Esta tabla contiene la informacin del centro educativo.
CREATE TABLE IF NOT EXISTS ses_descripcion_centro(
	id int not null auto_increment,    
    nombreCentroEscolar varchar(100) default null,
    codigoCentroEscolar int(11) default null, #fk    
    idModalidadEscolar int not null, #fk
    idTandaEscolar int not null, #fk
    idSector int not null, #fk
    idZona int not null, #fk
    direccion varchar(100) default null,
    telefono varchar(30) default null,
    fechaApertura date default null,    
    primary key(id),
        
    constraint descripcion_modalidad
    foreign key (IdModalidadEscolar)
    references ctg_modalidad_escolar(id),
    
    constraint descripcion_tanda
    foreign key (IdTandaEscolar)
    references ctg_tanda_escolar(id),
    
    constraint descripcion_sector
    foreign key (IdSector)
    references ctg_sector_escolar(id),
    
    constraint descripcion_zona
    foreign key (IdZona)
    references ctg_zona_escolar(id)
) engine InnoDB;

# Esta tabla contiene el registro de los años escolares pasados y vigente.
CREATE TABLE IF NOT EXISTS ses_anno_escolar(
	id int not null auto_increment,
    idCentroEducativo int not null unique, #fk
    idannoEscolar int not null unique, # fk
    idPeriodoEscolar int not null, #fk
    fechaInicio timestamp not null default current_timestamp,
    fechatermino timestamp default null,
    fechaLimite timestamp default null,            
    primary key(id),
    
    constraint ses_anno_escolar_ses_descripcion_centro
    foreign key (idCentroEducativo)
    references ses_descripcion_centro(id),    
    
    constraint ses_anno_escolar_ctg_anno_escolar
    foreign key (idannoEscolar)
    references ctg_anno_escolar(id),    
    
    constraint ses_anno_escolar_ctg_periodos
    foreign key (idPeriodoEscolar)
    references ctg_periodo_escolar(id)    
) engine InnoDB;
    
# Esta tabla almacenara los datos de los periodos en el año escolar (por ejemplo 1er semestre o 2do semestre).
create table if not exists ses_periodo_escolar(
	id int not null auto_increment,
    idAnnoEscolar int not null, # fk
    idPeriodoSesiones int not null, # fk
    fechaInicio timestamp default current_timestamp,
    fechaTermino timestamp default null,
    fechaLimite timestamp default null,
    primary key (id),
    
    constraint periodoEscolar_AnnoEScolar
    foreign key (IdAnnoEscolar)
    references ses_anno_escolar(id),
    
    constraint periodoEscolar_PeriodoSesiones
    foreign key (IdPeriodoSesiones)
    references ctg_periodo_sesiones(id)
) engine InnoDB;

# Esta tabla almacenara los datos sobre la seccion (grado y seccion [ex: 1ro A]) relaiconado al periodo (semestre).
create table if not exists ses_seccion_escolar(
	id int not null auto_increment,
    idGrado int not null, #fk
    idSeccion int not null, #fk
    idPeriodoEscolar int not null, #fk -> tabla ses_periodo_escolar    
    Ubicacion varchar(100) default null,
    primary key (id),    
    constraint seccionEscolar_Grados
    foreign key (idGrado)
    references ctg_grados(id),
    
    constraint seccionEscolar_Seccion
    foreign key (idSeccion)
    references ctg_seccion_escolar(id),
    
    constraint seccionEscolar_Periodo
    foreign key (idPeriodoEscolar)
    references ses_periodo_escolar(id)
) engine InnoDB;

# Esta contiene la lista de estudiantes activos inscriptos por seccion escolar.
# depende de la tabla scl_estudiantes_activos de la base de datos siceli_usersdb
create table if not exists ses_estudiantes_inscritos(
	id int not null auto_increment,
    fechaCreacion timestamp default current_timestamp not null,
    fechaActualizacion timestamp on update current_timestamp default null,    
    idSeccionEscolar int not null,
    idEstudiante int not null,
    primary key (id),
    
    constraint EstudiantesInscritos_seccionEscolar
    foreign key (idSeccionEscolar)
    references ses_seccion_escolar(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE,
    
    constraint EstudiantesInscritos_vw_estudiantes
    foreign key (idEstudiante)
    references siceli_usersdb.scl_estudiantes_activos(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE  
) engine InnoDB;

# Esta tabla contiene los datos de la sesion de clase: seccion, asignatura, profesor, sesion de clase
create table if not exists ses_sesion_clase(
	id int not null auto_increment,
    idSeccionEscolar int not null, # fk
    idAsignatura int not null, # fk
    idProfesor int default null, # fk
    idPeriodoSemanal int not null, # fk
    idDuracionSesion int default null,  # fk
    idHorarioInicio int default null, # fk
    idHorarioTermino int default null, # fk
    primary key (id),
    
    constraint sesionClase_seccionEscolar
    foreign key (idSeccionEscolar)
    references ses_seccion_escolar(id),
    
    constraint sesionClase_rolAsignatura # vincullado a la base de datos siceli_asignaturas
    foreign key (idAsignatura)
    references siceli_asignaturas.asgt_rol_asignaturas(id),
    
    constraint sesionClase_profesoresActivos #vinculado a la base ed datos siceli_usersdb
    foreign key (idProfesor)
    references siceli_usersdb.scl_profesores_activos(id),
    
    constraint sesionClase_semanalSesion 
    foreign key (idPeriodoSemanal) 
    references ctg_periodo_semanal_sesion(id),
    
    constraint sesionClase_duracionSesionClase
    foreign key (idDuracionSesion) 
    references ctg_duracion_sesion_clase(id),
    
    constraint sesionClase_horarioDiarioSesion
    foreign key (idHorarioInicio)
    references ctg_horario_diario_sesion(id),
    
    constraint sesionClase_horarioDiarioSesion2
    foreign key (idHorarioTermino)
    references ctg_horario_diario_sesion(id)
) engine InnoDB;
 