# * * * * IMPORTANTE * * * *
# Luego de crear la base de datos SE DEBEN CREAR los registro de persona, usuario y rol de persona.
# Esto se hace para poder utilizar la aplicacion y la base de datos.

CREATE SCHEMA IF NOT EXISTS siceli_proyectDB;
# Parte 1, llega hasta la linea 780
USE siceli_proyectDB;

--  CATALOGO / CATEGORIAS --------------------

-- TABLA ctg_terminos_politicas en ella se aloja un catalogo con las opciones para aceptar o rechazar las politicas y termino de privacidad
create table if not exists ctg_terminos_politicas(
	id int not null auto_increment,
    opc varchar(20) default null,
    primary key(id)
) engine InnoDB;
insert into ctg_terminos_politicas (id,opc) values (1,'aceptado'), (2,'rechazado');

-- TABLA ctg_paises en ella se aloja un catalogo con los nombre de los paises em español
CREATE TABLE IF NOT EXISTS ctg_paises (
id int(11) NOT NULL AUTO_INCREMENT,
iso varchar(2) DEFAULT NULL,
nombre varchar(80) DEFAULT NULL,
PRIMARY KEY (id)
) ENGINE InnoDB;

INSERT INTO `ctg_paises` VALUES
(1, 'AF', 'Afganistán'), (2, 'AX', 'Islas Gland'), (3, 'AL', 'Albania'), (4, 'DE', 'Alemania'), (5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'), (7, 'AI', 'Anguilla'), (8, 'AQ', 'Antártida'), (9, 'AG', 'Antigua y Barbuda'), (10, 'AN', 'Antillas Holandesas'),
(11, 'SA', 'Arabia Saudí'), (12, 'DZ', 'Argelia'), (13, 'AR', 'Argentina'), (14, 'AM', 'Armenia'), (15, 'AW', 'Aruba'),
(16, 'AU', 'Australia'), (17, 'AT', 'Austria'), (18, 'AZ', 'Azerbaiyán'), (19, 'BS', 'Bahamas'), (20, 'BH', 'Bahréin'),
(21, 'BD', 'Bangladesh'), (22, 'BB', 'Barbados'), (23, 'BY', 'Bielorrusia'), (24, 'BE', 'Bélgica'), (25, 'BZ', 'Belice'),
(26, 'BJ', 'Benin'), (27, 'BM', 'Bermudas'), (28, 'BT', 'Bhután'), (29, 'BO', 'Bolivia'), (30, 'BA', 'Bosnia y Herzegovina'),
(31, 'BW', 'Botsuana'), (32, 'BV', 'Isla Bouvet'), (33, 'BR', 'Brasil'), (34, 'BN', 'Brunéi'), (35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'), (37, 'BI', 'Burundi'), (38, 'CV', 'Cabo Verde'), (39, 'KY', 'Islas Caimán'), (40, 'KH', 'Camboya'),
(41, 'CM', 'Camerún'), (42, 'CA', 'Canadá'), (43, 'CF', 'República Centroafricana'), (44, 'TD', 'Chad'), (45, 'CZ', 'República Checa'),
(46, 'CL', 'Chile'), (47, 'CN', 'China'), (48, 'CY', 'Chipre'), (49, 'CX', 'Isla de Navidad'), (50, 'VA', 'Ciudad del Vaticano'),
(51, 'CC', 'Islas Cocos'), (52, 'CO', 'Colombia'), (53, 'KM', 'Comoras'), (54, 'CD', 'República Democrática del Congo'), (55, 'CG', 'Congo'),
(56, 'CK', 'Islas Cook'), (57, 'KP', 'Corea del Norte'), (58, 'KR', 'Corea del Sur'), (59, 'CI', 'Costa de Marfil'), (60, 'CR', 'Costa Rica'),
(61, 'HR', 'Croacia'), (62, 'CU', 'Cuba'), (63, 'DK', 'Dinamarca'), (64, 'DM', 'Dominica'), (65, 'DO', 'República Dominicana'),
(66, 'EC', 'Ecuador'), (67, 'EG', 'Egipto'), (68, 'SV', 'El Salvador'), (69, 'AE', 'Emiratos Árabes Unidos'), (70, 'ER', 'Eritrea'),
(71, 'SK', 'Eslovaquia'), (72, 'SI', 'Eslovenia'), (73, 'ES', 'España'), (74, 'UM', 'Islas ultramarinas de Estados Unidos'), (75, 'US', 'Estados Unidos'),
(76, 'EE', 'Estonia'), (77, 'ET', 'Etiopía'), (78, 'FO', 'Islas Feroe'), (79, 'PH', 'Filipinas'), (80, 'FI', 'Finlandia'),
(81, 'FJ', 'Fiyi'), (82, 'FR', 'Francia'), (83, 'GA', 'Gabón'), (84, 'GM', 'Gambia'), (85, 'GE', 'Georgia'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur'), (87, 'GH', 'Ghana'), (88, 'GI', 'Gibraltar'), (89, 'GD', 'Granada'), (90, 'GR', 'Grecia'),
(91, 'GL', 'Groenlandia'), (92, 'GP', 'Guadalupe'), (93, 'GU', 'Guam'), (94, 'GT', 'Guatemala'), (95, 'GF', 'Guayana Francesa'),
(96, 'GN', 'Guinea'), (97, 'GQ', 'Guinea Ecuatorial'), (98, 'GW', 'Guinea-Bissau'), (99, 'GY', 'Guyana'), (100, 'HT', 'Haití'),
(101, 'HM', 'Islas Heard y McDonald'), (102, 'HN', 'Honduras'), (103, 'HK', 'Hong Kong'), (104, 'HU', 'Hungría'), (105, 'IN', 'India'),
(106, 'ID', 'Indonesia'), (107, 'IR', 'Irán'), (108, 'IQ', 'Iraq'), (109, 'IE', 'Irlanda'), (110, 'IS', 'Islandia'),
(111, 'IL', 'Israel'), (112, 'IT', 'Italia'), (113, 'JM', 'Jamaica'), (114, 'JP', 'Japón'), (115, 'JO', 'Jordania'),
(116, 'KZ', 'Kazajstán'), (117, 'KE', 'Kenia'), (118, 'KG', 'Kirguistán'), (119, 'KI', 'Kiribati'), (120, 'KW', 'Kuwait'),
(121, 'LA', 'Laos'), (122, 'LS', 'Lesotho'), (123, 'LV', 'Letonia'), (124, 'LB', 'Líbano'), (125, 'LR', 'Liberia'),
(126, 'LY', 'Libia'), (127, 'LI', 'Liechtenstein'), (128, 'LT', 'Lituania'), (129, 'LU', 'Luxemburgo'), (130, 'MO', 'Macao'),
(131, 'MK', 'ARY Macedonia'), (132, 'MG', 'Madagascar'), (133, 'MY', 'Malasia'), (134, 'MW', 'Malawi'), (135, 'MV', 'Maldivas'),
(136, 'ML', 'Malí'), (137, 'MT', 'Malta'), (138, 'FK', 'Islas Malvinas'), (139, 'MP', 'Islas Marianas del Norte'), (140, 'MA', 'Marruecos'),
(141, 'MH', 'Islas Marshall'), (142, 'MQ', 'Martinica'), (143, 'MU', 'Mauricio'), (144, 'MR', 'Mauritania'), (145, 'YT', 'Mayotte'),
(146, 'MX', 'México'), (147, 'FM', 'Micronesia'), (148, 'MD', 'Moldavia'), (149, 'MC', 'Mónaco'), (150, 'MN', 'Mongolia'),
(151, 'MS', 'Montserrat'), (152, 'MZ', 'Mozambique'), (153, 'MM', 'Myanmar'), (154, 'NA', 'Namibia'), (155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'), (157, 'NI', 'Nicaragua'), (158, 'NE', 'Níger'), (159, 'NG', 'Nigeria'), (160, 'NU', 'Niue'),
(161, 'NF', 'Isla Norfolk'), (162, 'NO', 'Noruega'), (163, 'NC', 'Nueva Caledonia'), (164, 'NZ', 'Nueva Zelanda'), (165, 'OM', 'Omán'),
(166, 'NL', 'Países Bajos'), (167, 'PK', 'Pakistán'), (168, 'PW', 'Palau'), (169, 'PS', 'Palestina'), (170, 'PA', 'Panamá'),
(171, 'PG', 'Papúa Nueva Guinea'), (172, 'PY', 'Paraguay'), (173, 'PE', 'Perú'), (174, 'PN', 'Islas Pitcairn'), (175, 'PF', 'Polinesia Francesa'),
(176, 'PL', 'Polonia'), (177, 'PT', 'Portugal'), (178, 'PR', 'Puerto Rico'), (179, 'QA', 'Qatar'), (180, 'GB', 'Reino Unido'),
(181, 'RE', 'Reunión'), (182, 'RW', 'Ruanda'), (183, 'RO', 'Rumania'), (184, 'RU', 'Rusia'), (185, 'EH', 'Sahara Occidental'),
(186, 'SB', 'Islas Salomón'), (187, 'WS', 'Samoa'), (188, 'AS', 'Samoa Americana'), (189, 'KN', 'San Cristóbal y Nevis'), (190, 'SM', 'San Marino'),
(191, 'PM', 'San Pedro y Miquelón'), (192, 'VC', 'San Vicente y las Granadinas'), (193, 'SH', 'Santa Helena'), (194, 'LC', 'Santa Lucía'), (195, 'ST', 'Santo Tomé y Príncipe'),
(196, 'SN', 'Senegal'), (197, 'CS', 'Serbia y Montenegro'), (198, 'SC', 'Seychelles'), (199, 'SL', 'Sierra Leona'), (200, 'SG', 'Singapur'),
(201, 'SY', 'Siria'), (202, 'SO', 'Somalia'), (203, 'LK', 'Sri Lanka'), (204, 'SZ', 'Suazilandia'), (205, 'ZA', 'Sudáfrica'),
(206, 'SD', 'Sudán'), (207, 'SE', 'Suecia'), (208, 'CH', 'Suiza'), (209, 'SR', 'Surinam'), (210, 'SJ', 'Svalbard y Jan Mayen'),
(211, 'TH', 'Tailandia'), (212, 'TW', 'Taiwán'), (213, 'TZ', 'Tanzania'), (214, 'TJ', 'Tayikistán'), (215, 'IO', 'Territorio Británico del Océano Índico'),
(216, 'TF', 'Territorios Australes Franceses'), (217, 'TL', 'Timor Oriental'), (218, 'TG', 'Togo'), (219, 'TK', 'Tokelau'), (220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad y Tobago'), (222, 'TN', 'Túnez'), (223, 'TC', 'Islas Turcas y Caicos'), (224, 'TM', 'Turkmenistán'), (225, 'TR', 'Turquía'),
(226, 'TV', 'Tuvalu'), (227, 'UA', 'Ucrania'), (228, 'UG', 'Uganda'), (229, 'UY', 'Uruguay'), (230, 'UZ', 'Uzbekistán'),
(231, 'VU', 'Vanuatu'), (232, 'VE', 'Venezuela'), (233, 'VN', 'Vietnam'), (234, 'VG', 'Islas Vírgenes Británicas'), (235, 'VI', 'Islas Vírgenes de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna'), (237, 'YE', 'Yemen'), (238, 'DJ', 'Yibuti'), (239, 'ZM', 'Zambia'), (240, 'ZW', 'Zimbabue');

-- TABLA ctg_tipo_sangre en ella se aloja un catalogo con los nombre de los tipos de sangre
-- utilizar query catalogo_tipo_sangre_esp.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipo_sangre(
	id INT NOT NULL auto_increment,
    iso varchar(3) not null,
    tipo varchar(30) not null,
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_tipo_sangre (id,iso,tipo) VALUES
(1,'APO','A+'),
(2,'ANE','A-'),
(3,'BPO','B+'),
(4,'BNE','B-'),
(5,'ABP','AB+'),
(6,'ABN','AB-'),
(7,'OPO','O+'),
(8,'ONE','O-');

-- TABLA ctg_tipo_declaracion en ella se aloja un catalogo con los tipos de claraciones
-- utilizar query catalogo_tipo_declaracion_nacimiento.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipo_declaracion(
	id int not null auto_increment,
    iso varchar(3) not null,
    tipo varchar(30) not null,
    primary key(id)
) engine InnoDB;

-- TABLA ctg_roles en ella se aloja un catalogo con los tipos de roles o area de trabajo
-- utilizar query catalogo_roles_profesiones.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_roles(
	id int not null auto_increment,
    rol varchar(30) not null,
	primary key(id)
) engine InnoDB;

INSERT INTO ctg_roles (id,rol) VALUES
(1,'ADB'),
(2,'ADMIN'),
(3,'OPERATOR'),
(4,'READER');

-- TABLA ctg_tipo_dni en ella se aloja un catalogo con los tipos de numero unico de identidad: cedula o pasaporte.
-- utilizar query catalogo_tipodni.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipo_dni(
	id int not null auto_increment,
    tipo varchar(30),
    primary key(id)
) engine InnoDB;

-- TABLA ctg_estado_rol en ella se aloja un catalogo tipos de estado del rol.
-- utilizar query catalogo_estado_rol.sql para rellenar los valores.
create table if not exists ctg_estado_rol(
	id int not null auto_increment,
    estado varchar(30) not null,
    primary key(id)    
) engine InnoDB;

INSERT INTO ctg_estado_rol (id,estado) VALUES
(1,'ACTIVO'),
(2,'INACTIVO'),
(3,'SUSPENDIDO'),
(4,'BLOQUEADO');


-- TABLA ctg_sexo en ella se aloja un catalogo de tipos de sexo biologico.
-- utilizar query catalogo_sexo_genero.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_sexo (
id int NOT NULL AUTO_INCREMENT,
sexo varchar(30) NOT NULL,
PRIMARY KEY (id)
) ENGINE InnoDB;

INSERT INTO ctg_sexo (id,sexo) VALUES
(1,'Masculino'),
(2,'Femenino');

-- TABLA ctg_sexo en ella se aloja un catalogo de tipos de personalidad sexual.
-- utilizar query catalogo_sexo_genero.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_genero (
id int NOT NULL AUTO_INCREMENT,
sexo varchar(30) NOT NULL,
PRIMARY KEY (id)
) ENGINE InnoDB;

# Esta tabla crea un catalogo con los nombres y descripcion de perfil de areas profesionales.
CREATE TABLE IF NOT EXISTS ctg_area_profesional(
	id int not null auto_increment,
	nombre varchar(100) not null,
    DescripcionPerfilProfesional text default null,
    primary key (id)
) engine InnoDB;

insert into ctg_area_profesional (id,nombre) values
(1,'Agrimensura'),
(2,'Arquitectura'),
(3,'Certificado ESE Francés'),
(4,'Certificado ESE Inglés'),
(5,'Doctor en Medicina'),
(6,'Doctor en Odontología'),
(7,'Estudiante de Bachillerato'),
(8,'Estudiante de Basica'),
(9,'Estudiante Universitario'),
(10,'Ingeniería Agronómica-Mención Desarrollo Agrícola'),
(11,'Ingeniería Agronómica-Mención Producción de Cultivos'),
(12,'Ingeniería Agronómica-Mención Suelo y Riego'),
(13,'Ingeniería Civil'),
(14,'Ingeniería Electromecánica Mención Eléctrica'),
(15,'Ingeniería Electromecánica Mención Electrónica'),
(16,'Ingeniería Electromecánica Mención Mecánica'),
(17,'Ingeniería en Zootecnia'),
(18,'Ingeniería Geomática'),
(19,'Ingeniería Industrial'),
(20,'Ingeniería Lácteo Alimentaria'),
(21,'Ingeniería Química'),
(22,'Lic en Cinematografía y Audiovisuales Mención Cine'),
(23,'Lic en Cinematografía y Audiovisuales Mención Televisión'),
(24,'Lic en Educ. Menc Orient Para El Des de Rec Humanos'),
(25,'Licenciatura en Adm de Empresas Turísticas y Hoteleras'),
(26,'Licenciatura en Administración de Empresas'),
(27,'Licenciatura en Administración Publica'),
(28,'Licenciatura en Aduana y Comercio Exterior'),
(29,'Licenciatura en Antropología'),
(30,'Licenciatura en Artes Industriales Menc Diseño Artesanal'),
(31,'Licenciatura en Artes Industriales Menc Diseño de Modas'),
(32,'Licenciatura en Artes Industriales Mención Diseño Indust'),
(33,'Licenciatura en Artes Plásticas'),
(34,'Licenciatura en Artes Plásticas Mención Escultura'),
(35,'Licenciatura en Artes Plásticas Mención Pintura'),
(36,'Licenciatura en Bibliotecología y Ciencias de la Información'),
(37,'Licenciatura en Bioanalisis'),
(38,'Licenciatura en Biología'),
(39,'Licenciatura en Ciencias Políticas'),
(40,'Licenciatura en Com Social Mención Comunicación Grafica'),
(41,'Licenciatura en Com Social Mención Periodismo'),
(42,'Licenciatura en Com Social Mención Relaciones Publicas'),
(43,'Licenciatura en Contabilidad'),
(44,'Licenciatura en Derecho'),
(45,'Licenciatura en Economía'),
(46,'Licenciatura en Educación Básica'),
(47,'Licenciatura en Educación Básica'),
(48,'Licenciatura en Educación Especial'),
(49,'Licenciatura en Educación Física'),
(50,'Licenciatura en Educación Infantil'),
(51,'Licenciatura en Educación Inicial'),
(52,'Licenciatura en Educación Media Mención Biología y Química'),
(53,'Licenciatura en Educación Media Mención Ciencias Sociales'),
(54,'Licenciatura en Educación Media Mención Física y Matemáticas'), 
(55,'Licenciatura en Educación Media Mención Francés'),
(56,'Licenciatura en Educación Media Mención Inglés'),
(57,'Licenciatura en Educación Media Mención Letras'),
(58,'Licenciatura en Educación Menc Orient Socio-Comunitaria'),
(59,'Licenciatura en Educación Mención Arte Escolar'),
(60,'Licenciatura en Educación Mención Bibliotecología'), 
(61,'Licenciatura en Educación Mención Biología y Química'),
(62,'Licenciatura en Educación Mención Ciencias Sociales'),
(63,'Licenciatura en Educación Mención Filosofía y Letras'),
(64,'Licenciatura en Educación Mención Física'),
(65,'Licenciatura en Educación Mención Gestión Educativa'),
(66,'Licenciatura en Educación Mención Informática Educativa'),
(67,'Licenciatura en Educación Mención Matemáticas'),
(68,'Licenciatura en Educación Mención Orientación Académica'),
(69,'Licenciatura en Educación Mención Orientación Psicopedagógica'),
(70,'Licenciatura en Educación para Personas Jóvenes y Adultas'),
(71,'Licenciatura en Enfermería'),
(72,'Licenciatura en Enfermería'),
(73,'Licenciatura en Estadística Mención Informática'),
(74,'Licenciatura en Estadística Mención Socioeconómica'), 
(75,'Licenciatura en Farmacia'),
(76,'Licenciatura en Filosofía'),
(77,'Licenciatura en Física'),
(78,'Licenciatura en Geografía'),
(79,'Licenciatura en Geografía Mención Rec Naturales y Ecoturismo'),
(80,'Licenciatura en Geografía Mención Represent Espacial'),
(81,'Licenciatura en Historia'),
(82,'Licenciatura en Historia y Critica Del Arte'),
(83,'Licenciatura en Imagenologia'),
(84,'Licenciatura en Informática'),
(85,'Licenciatura en Lenguas Modernas Mención Francés'),
(86,'Licenciatura en Lenguas Modernas Mención Inglés'),
(87,'Licenciatura en Letras'),
(88,'Licenciatura en Matemáticas'),
(89,'Licenciatura en Mercadotecnia'),
(90,'Licenciatura en Microbiología'),
(91,'Licenciatura en Música'),
(92,'Licenciatura en Música Mención Teoría y Educ. Musical'),
(93,'Licenciatura en Psicología Mención Psi Del Desarr Humano'),
(94,'Licenciatura en Psicología Mención Psicología Clínica'),
(95,'Licenciatura en Psicología Mención Psicología Escolar'),
(96,'Licenciatura en Psicología Mención Psicología Industrial'),
(97,'Licenciatura en Psicología Mención Psicología Social'),
(98,'Licenciatura en Publicidad Menc Creatividad y Gerencia'),
(99,'Licenciatura en Publicidad Mención Diseño'),
(100,'Licenciatura en Publicidad Mención Ilustración'),
(101,'Licenciatura en Química'),
(102,'Licenciatura en Sociología'), 
(103,'Licenciatura en Teatro'),
(104,'Licenciatura en Teatro Mención Actuación'),
(105,'Licenciatura en Teatro Mención Dirección'),
(106,'Licenciatura en Teatro Mención Dramaturgia'),
(107,'Licenciatura en Trabajo Social'),
(108,'Licenciatura en Turismo y Hotelería'),
(109,'Medicina Veterinaria'),
(110,'Pre-Médica/Medicina'),
(111,'Téc en Turismo y Hotelería'),
(112,'Tec Superior en Reparación y Ensamblaje de Computadoras'),
(113,'Técnico en Fotografía y Medios Audiovisuales'),
(114,'Técnico Radiólogo'),
(115,'Técnico Superior en Atención Pre hospitalaria'),
(116,'Técnico Superior en Farmacia'),
(117,'Tecnología en Procesos Lácteos Alimentarios'),
(118,'Tecnólogo Superior en Alimentos');

-- TABLAS -------------------------------------------------------------
-- --------------------------------------------------------------------

-- TABLA scl_persona en ella se alojaran los datos de una persona.
CREATE TABLE IF NOT EXISTS scl_personas(
	id INT NOT NULL auto_increment,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp,
    nombres varchar(50) not null,    
    apellido1 varchar(50) not null,    
    apellido2 varchar(50) default null,
    sexo int,    
    fechaNacimiento date default null,
    lugarNacimiento varchar(50),
    tipoSangre int,
    primary key(id),
        
    constraint persona_sexo
    foreign key(sexo)
    references ctg_sexo(id), -- relacion con tipo de sexo.
    
    constraint persona_tipoSangre
    foreign key(tipoSangre)
    references ctg_tipo_sangre(id) -- relacion con tipo de sangre.
) engine InnoDB;

-- TABLA scl_users_login en ella se alojaran los datos de inicio de sesion y validacion de usuario.
CREATE TABLE IF NOT EXISTS scl_users_login(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL unique,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp,    
    usersName varchar(30) not null unique,
	usersPassword varchar(50) not null,
    securityToken varchar(200),
    primary key(id),
    constraint usersLogin_persona 
    foreign key(idPersona)
    references scl_personas(id) -- relacion con personas.
) engine InnoDB;

-- TABLA scl_registro_nacimiento en ella se alojaran los datos de la partida de nacimiento como identidad verificada.

CREATE TABLE IF NOT EXISTS scl_registro_nacimiento(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp,    
    
    nombreEmisor varchar(100) default null, -- J.C.E.     
	nombreOficialia varchar(30) default null,        
    lugarOficialia varchar(20) default null,
	numeroRegistroNacimiento varchar(50) DEFAULT NULL, -- No.Evento	
    fechaRegistroActa date default null,   
    numeroLibro varchar(10),
    numeroFolio varchar(10),
    numeroActa varchar(10),
    yearRegistro varchar(4), -- año de registro del acta
    tipoDeclaracion int, -- Tardia u Oportuna    
    numeroIdentidad varchar(20) UNIQUE default null, -- numero unico de identidad 
    tipoDNI int, -- cedula o pasaporte
    primary key(id),
    
    constraint registroNacimiento_persona 
    foreign key(idPersona)
    references scl_personas(id), -- relacion con personas
        
    constraint registroNacimiento_tipoDeclaracion
    foreign key(tipoDeclaracion)
    references ctg_tipo_declaracion(id), -- relacion con tipo de declaracion: oportuna o tardia
    	
    constraint registroNacimiento_tipoDNI
    foreign key(tipoDNI)
    references ctg_tipo_dni(id)  -- relacion con tipo de declaracion: oportuna o tardia
) engine InnoDB;

-- TABLA scl_identidad en ella se alojaran los datos que definen la identidad de la persona.
CREATE TABLE IF NOT EXISTS scl_identidad(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    idRegistroNacimiento INT not null,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp,    
	nacionalidad int default null, 
    estadoCivil varchar(30),        
    numeroIdentidad varchar(20) unique default null, -- cedula o pasaporte
    genero int,   
    nombrePadre varchar(100),
    nombreMadre varchar(100),    
    primary key(id),
         
    constraint identidad_persona 
    foreign key(idPersona)
    references scl_personas(id), -- relacion con persona
    
    constraint identidad_registroNacimiento 
    foreign key(idRegistroNacimiento)
    references scl_registro_nacimiento(id), -- relacion con registro nacimiento
    
    constraint identidad_paises 
    foreign key(nacionalidad)
    references ctg_paises(id), -- relacion con paises
        
    constraint identidad_genero 
    foreign key(genero)
    references ctg_genero(id) -- relacion con tipo de sexo.
) engine InnoDB;

-- TABLA scl_informacion_contacto en ella se alojaran los datos para contactar a las personas.
CREATE TABLE IF NOT EXISTS scl_informacion_contacto(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp,    
    direccion1 varchar(100),     
	direccion2 varchar(100),        
    sector varchar(50),
	ciudad varchar(50),	
    zipcode varchar(10),
    pais int,   
    telefono varchar(30),
    email varchar(50),
    socialNetwork1 varchar(100),
    socialNetwork2 varchar(100),
    socialNetwork3 varchar(100),
    primary key(id),
        
    constraint informacionContacto_persona 
    foreign key(idPersona)
    references scl_personas(id),
    
    constraint informacionContacto_paises 
    foreign key(pais)
    references ctg_paises(id)
) engine InnoDB;

-- TABLA scl_informacion_contacto en ella se alojaran los datos que definen la funciones (cargo) de las personas.
CREATE TABLE IF NOT EXISTS scl_roles_de_personas(
	id int not null auto_increment,
    idPersona int not null unique, #fk
    idRol int default null, #fk
    idAreaProfesional int default null, #fk
    f_inicio timestamp not null default current_timestamp,
    f_termino timestamp,
    estado int default null, -- activo, inactivo, retirado, desertor, finalizado
    primary key(id),    
	
    constraint rolesPersonas_persona
    foreign key(idPersona)
    references scl_personas(id),
    
    constraint rolesPersonas_roles
    foreign key(idRol)
    references ctg_roles(id),
    
    constraint rolesPersonas_estadoRol
    foreign key(estado)
    references ctg_estado_rol(id),
    
    constraint rolesPersonas_areaProfesional
    foreign key(idAreaProfesional)
    references ctg_area_profesional(id)
) engine InnoDB;

-- esta tabla lleva el control para saber si el usuario acepto los terminos y politica de privacidad
create table if not exists scl_terminos_y_politicas(
	id int not null auto_increment,
    idPersona int not null unique, -- relacionado scl_personas
    fechaCreacion timestamp default current_timestamp,
    fechaActualizacion timestamp on update current_timestamp,
    terminosAceptados int default null, -- relacionado ctg_terminos_y_politicas_aceptadas
    politicasAceptadas int default null, -- relacionado ctg_terminos_y_politicas_aceptadas
    primary key(id),
        
    constraint terminoypoliticas_persona
    foreign key (idPersona)
    references scl_personas(id),
    
    constraint terminos_opciones
    foreign key (terminosAceptados)
    references ctg_terminos_politicas(id),    
    
    constraint politicas_opciones
    foreign key (politicasAceptadas)
    references ctg_terminos_politicas(id)
) engine InnoDB;


# Esta contiene la lista de estudiantes activos en la base de datos.
# Esta tabla depende de la tabla scl_roles_de_personas
# Utiliza trigger para su llenado, actualizacion y borrado proveniente de scl_roles_de_personas.
create table if not exists scl_estudiantes_activos(
	id int not null auto_increment,    
    idRoles int not null, # fk
    idEstado int not null, # fk
    fechaCreacion timestamp default current_timestamp not null,
    fechaActualizacion timestamp on update current_timestamp,        
    primary key (id),
    
    constraint EstudiantesActivos_roles_personas
    foreign key (idRoles)
    references scl_roles_de_personas(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE,
    
    constraint EstudiantesActivos_roles_personas2
    foreign key (idEstado)
    references scl_roles_de_personas(estado)
    ON DELETE CASCADE    
    ON UPDATE CASCADE
      
) engine InnoDB;


# Esta contiene la lista de profesores activos en la base de datos.
# Esta tabla depende de la tabla scl_roles_de_personas
# Utiliza trigger para su llenado, actualizacion y borrado proveniente de scl_roles_de_personas.
create table if not exists scl_profesores_activos(
	id int not null auto_increment,    
    idRoles int not null, # fk
    idEstado int not null, # fk
    fechaCreacion timestamp default current_timestamp not null,
    fechaActualizacion timestamp on update current_timestamp,        
    primary key (id),
    
    constraint ProfesoresActivos_roles_personas
    foreign key (idRoles)
    references scl_roles_de_personas(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE,
    
    constraint ProfesoresActivos_roles_personas2
    foreign key (idEstado)
    references scl_roles_de_personas(estado)
    ON DELETE CASCADE    
    ON UPDATE CASCADE
      
) engine InnoDB;


-- VIEWS ----------------------------------------------------------------------
-- ----------------------------------------------------------------------------

drop view if exists vw_users;
-- esta vista contiene la informacion para iniciar sesion.
CREATE view vw_users as
select lg.idPersona as id,lg.fechaActualizacion,usersName,usersPassword,email,securityToken 
from scl_users_login as lg 
inner join scl_personas as p
on p.id=lg.idPersona
inner join scl_informacion_contacto as inf
on inf.idPersona=p.id;

drop view if exists vw_estudiantes;
# Esta vista contiene la informacion de todas las personas estudiantes.
CREATE VIEW vw_estudiantes
AS select p.id,nombres,apellido1,apellido2,sexo,fechaNacimiento,lugarNacimiento,TipoSangre,idRol,idAreaProfesional,estado 
from scl_personas as p inner join scl_roles_de_personas as rp
on p.id=rp.idPersona
where rp.idAreaProfesional<7 and rp.idAreaProfesional>9;

drop view if exists vw_estudiantes_activos;
# Esta vista contiene la informacion de las personas estudiantes activas.
CREATE VIEW vw_estudiantes_activos
AS select p.id,nombres,apellido1,apellido2,sexo,fechaNacimiento,lugarNacimiento,TipoSangre,idRol,idAreaProfesional,estado 
from scl_personas as p inner join scl_roles_de_personas as rp
on p.id=rp.idPersona
where rp.idAreaProfesional<7 and rp.idAreaProfesional>9 and estado=1;

-- TRIGGER ------------------------------------------------------------------------
-- --------------------------------------------------------------------------------

drop trigger if exists insert_roles_de_personas_estudiantes;
# Trigger en scl_estudiantes_activos al insertar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER insert_roles_de_personas_estudiantes
AFTER INSERT ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    
		 # idAreaProfesional = 7 (Estudiante de Bachillerato), estado = 1 (Activo)
         # idRoles pertenece a la tabla scl_roles_de_personas
		if (new.idAreaProfesional>=7 and new.idAreaProfesional<=9 and new.estado=1) then
			insert into scl_estudiantes_activos (idRoles,idEstado) VALUES (new.id,new.estado);
		end if; 
	END //
DELIMITER ;

drop trigger if exists update_roles_de_personas_estudiantes;
# Trigger en scl_estudiantes_activos al actualizar en la tabla scl_roles_de_personas
DELIMITER //
CREATE TRIGGER update_roles_de_personas_estudiantes
AFTER UPDATE ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN
		declare counter_var int default 0;
        
        select count(*) 
        into counter_var # cuenta el los registros que coincidan con la actualizacion.
        from scl_estudiantes_activos
        where idRoles=old.id;
        
        if counter_var=0 then # verifica que no exista el registro actualizado en la tabla scl_estudiantes_activos
			if (new.idAreaProfesional>=7 and new.idAreaProfesional<=9 and new.estado=1) then # verifica si es estudiante activo
				# idRoles pertenece a la tabla scl_roles_de_personas
				insert into scl_estudiantes_activos (idRoles,idEstado) VALUES (new.id,new.estado);
			end if;
		else
			if (new.idAreaProfesional<7 or new.idAreaProfesional>9 or new.estado!=1) then # verifica si no es estudiante de bachillerato o si no esta activo
				delete from scl_estudiantes_activos # lo borra de la tabla scl_estudiantes_activos 				
				where idRoles=old.id;
			end if;
		end if;
	END //
DELIMITER ;

drop trigger if exists delete_roles_de_personas_estudiantes;
# Trigger en scl_estudiantes_activos al borrar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER delete_roles_de_personas_estudiantes
AFTER DELETE ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    		
        DELETE FROM scl_estudiantes_activos 
        where idRoles=old.id;    
	END //
DELIMITER ;

-- ----------------------------------------------------

drop trigger if exists insert_roles_de_personas_profesores;
# Trigger en scl_profesores_activos al insertar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER insert_roles_de_personas_profesores
AFTER INSERT ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    
		if (new.idAreaProfesional<7 or new.idAreaProfesional>9 and new.estado=1) then
			insert into scl_profesores_activos (idRoles,idEstado) VALUES (new.id,new.estado);
		end if; 
	END //
DELIMITER ;

drop trigger if exists update_roles_de_personas_profesores;
# Trigger en scl_profesores_activos al actualizar en la tabla scl_roles_de_personas
DELIMITER //
CREATE TRIGGER update_roles_de_personas_profesores
AFTER UPDATE ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN
		declare counter_var int default 0;
        
        select count(*) 
        into counter_var # cuenta el los registros que coincidan con la actualizacion.
        from scl_profesores_activos
        where idRoles=old.id;
        
        if counter_var=0 then # verifica que no exista el registro actualizado en la tabla scl_profesores_activos
			if (new.idAreaProfesional<7 or new.idAreaProfesional>9 and new.estado=1) then # verifica si es profesor activo
				insert into scl_profesores_activos (idRoles,idEstado) VALUES (new.id,new.estado);
			end if;
		else
			if (new.idAreaProfesional>=7 and new.idAreaProfesional<=9 or new.estado!=1) then # verifica si no es profesor o si no esta activo
				delete from scl_profesores_activos # lo borra de la tabla scl_profesores_activos 				
				where idRoles=old.id;
			end if;
		end if;
	END //
DELIMITER ;

drop trigger if exists delete_roles_de_personas_profesores;
# Trigger en scl_profesores_activos al borrar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER delete_roles_de_personas_profesores
AFTER DELETE ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    		
        DELETE FROM scl_profesores_activos 
        where idRoles=old.id;    
	END //
DELIMITER ;

-- PROCEDURES / PROCEDIMIENTOS ---------------------------------------------------------------
-- -------------------------------------------------------------------------------------------

# Este procedure inserta los datos de una nueva persona en todas las tablas relacionadas.
# (persona,terminos y politicas,identidad,registro de nacimiento, informacion de contacto,roles de personas)
# esto sirve para crear una relacion correcta en la base de datos.
DELIMITER //
CREATE PROCEDURE agregar_persona(
	in nombres_var varchar(50),
    in apellido1_var varchar(50),
    in apellido2_var varchar(50),
    in sexo_var int,
    in fechaNacimiento_var date,
    in lugarNacimiento_var varchar(50),
    in tipoSangre_var int
)
begin
	declare idPersona_var int default null;      
    declare reg_nacimiento_var int default null;      
    declare sql_error tinyint default false;
    declare continue handler for sqlexception
    set sql_error = true;
        
	start transaction;
    
    if (nombres_var=null) or (nombres_var='') or (length(nombres_var)<=1) or
	   (apellido1_var=null) or (apellido1_var='') or (length(apellido1_var)<=1) then
		set sql_error = true;
    else   
		
		-- 1 Crea registro en la tabla scl_personas
		insert into scl_personas (nombres,apellido1,apellido2,sexo,fechaNacimiento,lugarNacimiento,TipoSangre)
        values (nombres_var,apellido1_var,apellido2_var,sexo_var,fechaNacimiento_var,lugarNacimiento_var,tipoSangre_var);
		-- 2
        -- obtiene el ultimo id de la tabla scl_personas
        select id top -- top devuelve el primer registro encontrado, el de arriba.
        into idPersona_var -- envia el valor a la variable.
        from scl_personas
        order by id desc
        limit 1;   
         
        if (idPersona_var!=null) or (idPersona_var>0) then        
			-- 3
			insert into scl_registro_nacimiento (idPersona) -- crear registro para el registro de nacimiento        
			values (idPersona_var);
            
            -- 3.1
			insert into scl_terminos_y_politicas (idPersona) -- crear registro para los terminos y politicas aceptadas 
			values (idPersona_var);
			-- 4
			-- obtiene el ultimo id de la tabla scl_registro_nacimiento
			select id top -- top devuelve el primer registro encontrado, el de arriba.
			into reg_nacimiento_var -- envia el valor a la variable.
			from scl_registro_nacimiento
			order by id desc
			limit 1;        
         
			if (reg_nacimiento_var!=null) or (reg_nacimiento_var>0) then -- verifica que no este vacia la variable y sea mayor que 0.
				-- 5
				insert into scl_identidad (idPersona,idRegistroNacimiento) -- crea el registro de la identidad
				values (idPersona_var,reg_nacimiento_var);
				-- 6
				insert into scl_informacion_contacto (idPersona) -- crea el registro de la identidad
				values (idPersona_var);
				-- 7
				insert into scl_roles_de_personas (idPersona) -- crea el registro de la identidad
				values (idPersona_var);
			else
				set sql_error = true;
                rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
				select 'El IdRegistroNacimiento no fue capturado.'  as Mensaje_Error1;
			end if;
		else
			set sql_error = true;
            rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
			select 'El IdPersona no fue capturado.'  as Mensaje_Error2;
        end if;
    end if;
    
    if (sql_error = false) then
		commit; # -- commit indica que puede guardar las instrucciones en el servidor.
        select 'Nuevo usuario creado' as Mensaje;
	else
		rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
        select 'El usuario no pudo ser creado.'  as Mensaje_Error3;
    end if;
end //
DELIMITER ;

# ESte procedure crea un usuario para poder entrar al sistema
DELIMITER //
CREATE PROCEDURE crear_usuario_interno(
	in idPersona_var int,
    in usuario_var varchar(50),
    in password_var varchar(50)    
)
begin
	-- declare reg_nacimiento_var int default null;      
    declare sql_error tinyint default false;
    declare continue handler for sqlexception
    set sql_error = true;
            
    if (idPersona_var=(select idPersona from scl_users_login as p where p.idPersona=idPersona_var limit 1)) 
		or (idPersona_var<=0) or (idPersona_var=null) then
			set sql_error = true;
	else
		start transaction;
		-- 1 
        insert into scl_users_login (idPersona,usersName,usersPassword) -- crear registro para el login
        values (idPersona_var,usuario_var,password_var); 
	end if;
    
    if sql_error = false then
		commit; # -- commit indica que puede guardar las instrucciones en el servidor.
        select 'Nuevo usuario creado' as Mensaje;
	else
		rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
        select 'El usuario no pudo ser creado.'  as Mensaje_Error;
    end if;
end //
DELIMITER ;

# ---------------------------------------------------------------------
# ---------------------------------------------------------------------
# Parte 2, llega hasta la linea 825

# Esta tabla contiene un catalogo de las posibles asignaturas impartida en un centro educativo.
CREATE TABLE IF NOT EXISTS ctg_asignaturas(
	id int not null auto_increment,
    nombre varchar(100),    
    descripcion text default null,
    primary key (id)
) engine InnoDB;

insert into ctg_asignaturas (id,nombre) values
(1,'Biología'),
(2,'Educación Artística'),
(3,'Educación Comercial'),
(4,'Educación Física'),
(5,'Educación Moral y Civica'),
(6,'Física'),
(7,'Formación Integral Humana y Religiosa'),
(8,'Francés I'),
(9,'Francés II'),
(10,'Francés III'),
(11,'Francés IV'),
(12,'Francés V'),
(13,'Francés VI'),
(14,'Geografía e Historia de América y de los Pueblos Caribe'),
(15,'Historia de la Civilización y Geografía Mundial'),
(16,'Historia y Geografía Dominicana Siglos XIX y XX'),
(17,'Informática'),
(18,'Inglés I'),
(19,'Inglés II'),
(20,'Inglés III'),
(21,'Inglés IV'),
(22,'Inglés V'),
(23,'Inglés VI'),
(24,'Introducción a la Informática'),
(25,'Lengua Española I'),
(26,'Lengua Española II'),
(27,'Lengua Española III'),
(28,'Lengua Española IV'),
(29,'Lengua Española V'),
(30,'Lengua Española VI'),
(31,'Lengua Española VII'),
(32,'Lengua Española VIII'),
(33,'Matemática I'),
(34,'Matemática II'),
(35,'Matemática III'),
(36,'Matemática IV'),
(37,'Matemática V'),
(38,'Matemática VI'),
(39,'Matemática VII'),
(40,'Matemática VIII'),
(41,'Nociones de Electricidad'),
(42,'Química'),
(43,'República Dominicana Hoy');

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
    references ctg_roles(id), 
    
    constraint asignaturas_areaProfesional
    foreign key (areaProfesional)
    references ctg_area_profesional(id)
) engine innoDB;

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

# parte 3, llega hasta la linea 1394

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

INSERT INTO ctg_periodo_escolar (id,tipoPeriodo,CantDias,duracion) VALUES 
(1,'Mensual',30,(30*24*60*60)),
(2,'Bimestral',60,(60*24*60*60)),
(3,'Trimestral',90,(90*24*60*60)),
(4,'Cuatrimestral',120,(120*24*60*60)),
(5,'Semestral',180,(180*24*60*60)),
(6,'Anual',365,(365*24*60*60));

# Esta tabla es un catalogo que contiene los periodos de años escolares (inicio y termino).
CREATE TABLE IF NOT EXISTS ctg_anno_escolar(
	id int not null auto_increment,    
    annoInicio int(4) default null,
    annoTermino int(4) default null,    
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_anno_escolar (id,annoInicio,annoTermino) VALUES 
(1,'2019','2020'),
(2,'2020','2021'),
(3,'2021','2022'),
(4,'2022','2023'),
(5,'2023','2024'),
(6,'2024','2025'),
(7,'2025','2026'),
(8,'2026','2027'),
(9,'2027','2028'),
(10,'2028','2029'),
(11,'2029','2030'),
(12,'2030','2031'),
(13,'2031','2032'),
(14,'2032','2033'),
(15,'2033','2034'),
(16,'2034','2035'),
(17,'2035','2036'),
(18,'2036','2037'),
(19,'2037','2038'),
(20,'2038','2039'),
(21,'2039','2040'),
(22,'2040','2041'),
(23,'2041','2042'),
(24,'2042','2043'),
(25,'2043','2044'),
(26,'2044','2045'),
(27,'2045','2046'),
(28,'2046','2047'),
(29,'2047','2048'),
(30,'2048','2049'),
(31,'2049','2050'),
(32,'2050','2051');

# Esta tabla es un catalogo que contiene las modalidades educativas: general, prepara, extendida.
CREATE TABLE IF NOT EXISTS ctg_modalidad_escolar(
	id int not null auto_increment,    
    modalidadEscolar varchar(30) default null,    
    primary key(id)
) engine InnoDB;

insert into ctg_modalidad_escolar (id,modalidadEscolar) values
(1,'General'),(2,'Jornada Extendida'),(3,'PREPARA'),(4,'Otra');

# Esta tabla es un catalogo que contiene las tandas educativas matutina, verpetina, nocturna, sabatina, dominical.
CREATE TABLE IF NOT EXISTS ctg_tanda_escolar(
	id int not null auto_increment,    
    tandaEscolar varchar(30) default null,    
    primary key(id)
) engine InnoDB;

insert into ctg_tanda_escolar (id,tandaEscolar) values
(1,'Matutina'),(2,'Verpestina'),(3,'Nocturna'),(4,'Sabatina'),(5,'Dominical'),(6,'Extendida');

# Esta tabla contiene un catalogo de los grados impartidos en el centro educativo.
CREATE TABLE IF NOT EXISTS ctg_grados(
	id int not null auto_increment,
    iso varchar(4) default null,
    nombre varchar(20) default null,
    primary key(id)
) engine InnoDB;

insert into ctg_grados (id,iso,nombre) values
(1,'KIN','KINDER'),
(2,'PRE','PRE-PRIMERO'),
(3,'1RO','PRIMERO'),
(4,'2DO','SEGUNDO'),
(5,'3RO','TERCERO'),
(6,'4TO','CUARTO'),
(7,'5TO','QUINTO'),
(8,'6TO','SEXTO'),
(9,'7MO','SEPTIMO'),
(10,'8VO','OCTAVO'),
(11,'9NO','NOVENO'),
(12,'10MO','DECIMO'),
(13,'11VO','ONCEAVO'),
(14,'12VO','DOCEAVO');

# Esta tabla contienue un catalogo con los sectores escolares: privado y semi-privado.
CREATE TABLE IF NOT EXISTS ctg_sector_escolar(
	id int not null auto_increment,
    sectorEscolar varchar(20),
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_sector_escolar (id,sectorEscolar) values
(1,'PUBLICO'),(2,'SEMI-PRIVADO');

# Esta tabla contienue un catalogo con los zonas escolares: rural y urbana.
CREATE TABLE IF NOT EXISTS ctg_zona_escolar(
	id int not null auto_increment,
    zonaEscolar varchar(20),
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_zona_escolar (id,zonaEscolar) values
(1,'RURAL'),(2,'URBANA');

# Esta tabla contiene un catalogo con las secciones fisicas de centro educativo.
CREATE TABLE IF NOT EXISTS ctg_seccion_escolar(
	id int not null auto_increment,
    nombre varchar(1) default null,
    primary key (id)
) engine InnoDB;

insert into ctg_seccion_escolar (id,nombre) values
(1,'A'),
(2,'B'),
(3,'C'),
(4,'D'),
(5,'E'),
(6,'F'),
(7,'G'),
(8,'H'),
(9,'I'),
(10,'J'),
(11,'K'),
(12,'L'),
(13,'M'),
(14,'N'),
(15,'O'),
(16,'P'),
(17,'Q'),
(18,'R'),
(19,'S'),
(20,'T'),
(21,'U'),
(22,'V'),
(23,'W'),
(24,'X'),
(25,'Y'),
(26,'Z');

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

insert into ctg_periodo_semanal_sesion (id,idPeriodoSesiones,dia) values
(1,1,'DOMINGO'),(2,1,'LUNES'),(3,1,'MARTES'),(4,1,'MIERCOLES'),(5,1,'JUEVES'),(6,1,'VIERNES'),(7,1,'SABADO');

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

insert into ctg_duracion_sesion_clase (id,duracionHoras) values
(1,003000),(2,004500),(3,010000),(4,011500),(5,013000),(6,014500),
(7,020000),(8,021500),(9,023000),(10,024500),(11,030000),(12,031500),
(13,033000),(14,034500),(15,040000),(16,041500),(17,043000),(18,044500),
(19,050000);

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
    fechatermino timestamp,
    fechaLimite timestamp,            
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
    fechaTermino timestamp,
    fechaLimite timestamp,
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
    fechaActualizacion timestamp on update current_timestamp,    
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
    references scl_estudiantes_activos(id)
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
    references asgt_rol_asignaturas(id),
    
    constraint sesionClase_profesoresActivos #vinculado a la base ed datos siceli_usersdb
    foreign key (idProfesor)
    references scl_profesores_activos(id),
    
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
 
 # procedures ----------------------------------------------------------------------
 # insertarDatos siceli_sesiones ---------------------------------------------------
 DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarDatos`(
	in tipoDatos int(2),        
    in cadenaDeDatos text    
)
begin    
	declare codigoCentroEscolar_var int(20) default null;          
    declare nombreCentroEscolar_var varchar(200) default null;          
    declare modalidadEscolar_var int(1) default null;
    declare tandaEscolar_var int(1) default null;
    declare direccion_var varchar(200) default null;      
    declare sector_var int(1) default null;
    declare zona_var int(1) default null;
    declare telefono_var varchar(30) default null; 
    declare fechaApertura_var varchar(30) default null; 
     
	declare sql_error tinyint default false;
	declare continue handler for sqlexception
    set sql_error = true;
        
	SELECT SUBSTRING_INDEX(cadenaDeDatos,'||',1)
	INTO codigoCentroEscolar_var;
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',2),'||',-1) as nombreCentroEscolar        
	INTO nombreCentroEscolar_var;
        
    -- UPPER convierte la cadena a MAYUSCULA.
    -- LOWER convierte la cadena a minuscula.
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',3),'||',-1) as modalidadEscolar            
	INTO modalidadEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',4),'||',-1) as tandaEscolar        
    INTO tandaEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',5),'||',-1) as direccion        
	INTO direccion_var;
        
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',6),'||',-1) as sector        
	INTO sector_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',7),'||',-1) as zona            
	INTO zona_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',8),'||',-1) as telefono        
	INTO telefono_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',9),'||',-1) as fecha
	INTO fechaApertura_var;
    
start transaction;
-- 1: datosdelCentroEducativo
if (tipoDatos = 1) then
		-- verifica que las categorias no esten vacias, ni excendan el valor esperado.
    if 	(modalidadEscolar_var=null) or 	(modalidadEscolar_var='') or (length(modalidadEscolar_var)>1) or
		(tandaEscolar_var=null) or 		(tandaEscolar_var='') or (length(tandaEscolar_var)>1) or
        (sector_var=null) or 			(sector_var='') or (length(sector_var)>1) or
        (zona_var=null) or 				(zona_var='') or (length(zona_var)>1) or        
        (tipoDatos=null) or 			(tipoDatos='') then
		set sql_error = true;
    else    
	    
		-- 1 insetar los datos en la tabla ses_descripcion_centro
		insert into ses_descripcion_centro (         		  
		  codigoCentroEscolar,
          nombreCentroEscolar,
		  idModalidadEscolar,
		  idTandaEscolar,
          direccion,
		  idSector,
		  idZona,
		  telefono,
		  fechaApertura
          )
          values ( 
          codigoCentroEscolar_var,
          nombreCentroEscolar_var,		  
		  modalidadEscolar_var,
		  tandaEscolar_var,
          direccion_var,
		  sector_var,
		  zona_var,		  
		  telefono_var,
		  fechaApertura_var
          );
    end if;            
    
    if (sql_error = false) then
		commit; # -- commit indica que puede guardar las instrucciones en el servidor.
        select 'Datos actualizados correctamente' as Mensaje;
	else
		rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
        select 'Verifique la informacion' as Mensaje_Error1;
    end if;
    
else   
	rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
    select 'Verifique tipo de datos' as Mensaje_Error2;
end if; 

end$$
DELIMITER ;
# actualizarDatos siceli_sesiones ---------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDatos`(
	in tipoDatos int(2),    
    in idEscuela int(6),
    in cadenaDeDatos text    
)
begin    
	declare codigoCentroEscolar_var int(20) default null;          
    declare nombreCentroEscolar_var varchar(200) default null;          
    declare modalidadEscolar_var int(1) default null;
    declare tandaEscolar_var int(1) default null;
    declare direccion_var varchar(200) default null;      
    declare sector_var int(1) default null;
    declare zona_var int(1) default null;
    declare telefono_var varchar(30) default null; 
    declare fechaApertura_var varchar(30) default null; 
     
	declare sql_error tinyint default false;
	declare continue handler for sqlexception
    set sql_error = true;
        
	SELECT SUBSTRING_INDEX(cadenaDeDatos,'||',1)
	INTO codigoCentroEscolar_var;
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',2),'||',-1) as nombreCentroEscolar        
	INTO nombreCentroEscolar_var;
        
    -- UPPER convierte la cadena a MAYUSCULA.
    -- LOWER convierte la cadena a minuscula.
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',3),'||',-1) as modalidadEscolar            
	INTO modalidadEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',4),'||',-1) as tandaEscolar        
    INTO tandaEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',5),'||',-1) as direccion        
	INTO direccion_var;
        
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',6),'||',-1) as sector        
	INTO sector_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',7),'||',-1) as zona        
    # SELECT SUBSTRING_INDEX(SUBSTRING_INDEX('10318||Liceo Francisco Gregorio Billini PREPARA||3||5||C/Gastón F. Deligne Esq. Pdte. Billini, Baní, Prov. Peravia, Rep. Dom.||1||1||809-522-7259||2019-05-05','||',10),'||',-1) as zona     
	INTO zona_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',8),'||',-1) as telefono        
	INTO telefono_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'||',9),'||',-1) as fecha
	INTO fechaApertura_var;
    
start transaction;
-- 1: datosdelCentroEducativo
if (tipoDatos = 1) then
		-- verifica que las categorias no esten vacias, ni excendan el valor esperado.
    if 	(modalidadEscolar_var=null) or 	(modalidadEscolar_var='') or (length(modalidadEscolar_var)>1) or
		(tandaEscolar_var=null) or 		(tandaEscolar_var='') or (length(tandaEscolar_var)>1) or
        (sector_var=null) or 			(sector_var='') or (length(sector_var)>1) or
        (zona_var=null) or 				(zona_var='') or (length(zona_var)>1) or
        (idEscuela=null) or 			(idEscuela='') or 
        (tipoDatos=null) or 			(tipoDatos='') then
		set sql_error = true;
    else    
	    
		-- 1 actualiza el registro en la tabla ses_descripcion_centro
		update ses_descripcion_centro 
        set 		  
		  codigoCentroEscolar = codigoCentroEscolar_var,
          nombreCentroEscolar = nombreCentroEscolar_var,		  
		  idModalidadEscolar = modalidadEscolar_var,
		  idTandaEscolar = tandaEscolar_var,
          direccion = direccion_var,
		  idSector = sector_var,
		  idZona = zona_var,		  
		  telefono = telefono_var,
		  fechaApertura = fechaApertura_var
          where id = idEscuela;
    end if;            
    
    if (sql_error = false) then
		commit; # -- commit indica que puede guardar las instrucciones en el servidor.
        select 'Datos actualizados correctamente' as Mensaje;
	else
		rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
        select 'Verifique la informacion' as Mensaje_Error1;
    end if;
    
else   
	rollback; # -- rollback no permite que ninguna instruccion se guarde desde start transaction
    select 'Verifique tipo de datos' as Mensaje_Error2;
end if; 

end$$
DELIMITER ;

# ----------------------------------------------------------------
# ----------------------------------------------------------------

# Parte 4, llega hasta la linea 1470

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
    references ses_seccion_escolar(id),
    
    constraint regCalif_sesiondbSesionClase
    foreign key (idSesionClase)
    references ses_sesion_clase(id),
    
    constraint regCalif_sesiondbEstudiantesInscritos
    foreign key (idEstudiante)
    references ses_estudiantes_inscritos(id)
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

