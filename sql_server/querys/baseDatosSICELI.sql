CREATE SCHEMA IF NOT EXISTS siceli_usersDB;

USE siceli_usersDB;

--  CATALOGO / CATEGORIAS --------------------

-- TABLA ctg_terminosPoliticas en ella se aloja un catalogo con las opciones para aceptar o rechazar las politicas y termino de privacidad
create table if not exists ctg_terminosPoliticas(
	id int not null auto_increment,
    opc varchar(20) default null,
    primary key(id)
) engine InnoDB;
insert into ctg_terminosPoliticas (opc) values ('aceptado'), ('rechazado');

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

-- TABLA ctg_tiposangre en ella se aloja un catalogo con los nombre de los tipos de sangre
-- utilizar query catalogo_tipo_sangre_esp.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipoSangre(
	id INT NOT NULL auto_increment,
    iso varchar(3) not null,
    tipo varchar(30) not null,
    primary key(id)
) engine InnoDB;

INSERT INTO ctg_tiposangre (id,iso,tipo) VALUES
(1,'APO','A+'),
(2,'ANE','A-'),
(3,'BPO','B+'),
(4,'BNE','B-'),
(5,'ABP','AB+'),
(6,'ABN','AB-'),
(7,'OPO','O+'),
(8,'ONE','O-');

-- TABLA ctg_tipoDeclaracion en ella se aloja un catalogo con los tipos de claraciones
-- utilizar query catalogo_tipo_declaracion_nacimiento.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipoDeclaracion(
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

-- TABLA ctg_tipodni en ella se aloja un catalogo con los tipos de numero unico de identidad: cedula o pasaporte.
-- utilizar query catalogo_tipodni.sql para rellenar los valores.
CREATE TABLE IF NOT EXISTS ctg_tipoDNI(
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

insert into ctg_area_profesional (nombre) values
('Agrimensura'),
('Arquitectura'),
('Certificado ESE Francés'),
('Certificado ESE Inglés'),
('Doctor en Medicina'),
('Doctor en Odontología'),
('Estudiante de Bachillerato'),
('Estudiante de Basica'),
('Estudiante Universitario'),
('Ingeniería Agronómica-Mención Desarrollo Agrícola'),
('Ingeniería Agronómica-Mención Producción de Cultivos'),
('Ingeniería Agronómica-Mención Suelo y Riego'),
('Ingeniería Civil'),
('Ingeniería Electromecánica Mención Eléctrica'),
('Ingeniería Electromecánica Mención Electrónica'),
('Ingeniería Electromecánica Mención Mecánica'),
('Ingeniería en Zootecnia'),
('Ingeniería Geomática'),
('Ingeniería Industrial'),
('Ingeniería Lácteo Alimentaria'),
('Ingeniería Química'),
('Lic en Cinematografía y Audiovisuales Mención Cine'),
('Lic en Cinematografía y Audiovisuales Mención Televisión'),
('Lic en Educ. Menc Orient Para El Des de Rec Humanos'),
('Licenciatura en Adm de Empresas Turísticas y Hoteleras'),
('Licenciatura en Administración de Empresas'),
('Licenciatura en Administración Publica'),
('Licenciatura en Aduana y Comercio Exterior'),
('Licenciatura en Antropología'),
('Licenciatura en Artes Industriales Menc Diseño Artesanal'),
('Licenciatura en Artes Industriales Menc Diseño de Modas'),
('Licenciatura en Artes Industriales Mención Diseño Indust'),
('Licenciatura en Artes Plásticas'),
('Licenciatura en Artes Plásticas Mención Escultura'),
('Licenciatura en Artes Plásticas Mención Pintura'),
('Licenciatura en Bibliotecología y Ciencias de la Información'),
('Licenciatura en Bioanalisis'),
('Licenciatura en Biología'),
('Licenciatura en Ciencias Políticas'),
('Licenciatura en Com Social Mención Comunicación Grafica'),
('Licenciatura en Com Social Mención Periodismo'),
('Licenciatura en Com Social Mención Relaciones Publicas'),
('Licenciatura en Contabilidad'),
('Licenciatura en Derecho'),
('Licenciatura en Economía'),
('Licenciatura en Educación Básica'),
('Licenciatura en Educación Básica'),
('Licenciatura en Educación Especial'),
('Licenciatura en Educación Física'),
('Licenciatura en Educación Infantil'),
('Licenciatura en Educación Inicial'),
('Licenciatura en Educación Media Mención Biología y Química'),
('Licenciatura en Educación Media Mención Ciencias Sociales'),
('Licenciatura en Educación Media Mención Física y Matemáticas'), 
('Licenciatura en Educación Media Mención Francés'),
('Licenciatura en Educación Media Mención Inglés'),
('Licenciatura en Educación Media Mención Letras'),
('Licenciatura en Educación Menc Orient Socio-Comunitaria'),
('Licenciatura en Educación Mención Arte Escolar'),
('Licenciatura en Educación Mención Bibliotecología'), 
('Licenciatura en Educación Mención Biología y Química'),
('Licenciatura en Educación Mención Ciencias Sociales'),
('Licenciatura en Educación Mención Filosofía y Letras'),
('Licenciatura en Educación Mención Física'),
('Licenciatura en Educación Mención Gestión Educativa'),
('Licenciatura en Educación Mención Informática Educativa'),
('Licenciatura en Educación Mención Matemáticas'),
('Licenciatura en Educación Mención Orientación Académica'),
('Licenciatura en Educación Mención Orientación Psicopedagógica'),
('Licenciatura en Educación para Personas Jóvenes y Adultas'),
('Licenciatura en Enfermería'),
('Licenciatura en Enfermería'),
('Licenciatura en Estadística Mención Informática'),
('Licenciatura en Estadística Mención Socioeconómica'), 
('Licenciatura en Farmacia'),
('Licenciatura en Filosofía'),
('Licenciatura en Física'),
('Licenciatura en Geografía'),
('Licenciatura en Geografía Mención Rec Naturales y Ecoturismo'),
('Licenciatura en Geografía Mención Represent Espacial'),
('Licenciatura en Historia'),
('Licenciatura en Historia y Critica Del Arte'),
('Licenciatura en Imagenologia'),
('Licenciatura en Informática'),
('Licenciatura en Lenguas Modernas Mención Francés'),
('Licenciatura en Lenguas Modernas Mención Inglés'),
('Licenciatura en Letras'),
('Licenciatura en Matemáticas'),
('Licenciatura en Mercadotecnia'),
('Licenciatura en Microbiología'),
('Licenciatura en Música'),
('Licenciatura en Música Mención Teoría y Educ. Musical'),
('Licenciatura en Psicología Mención Psi Del Desarr Humano'),
('Licenciatura en Psicología Mención Psicología Clínica'),
('Licenciatura en Psicología Mención Psicología Escolar'),
('Licenciatura en Psicología Mención Psicología Industrial'),
('Licenciatura en Psicología Mención Psicología Social'),
('Licenciatura en Publicidad Menc Creatividad y Gerencia'),
('Licenciatura en Publicidad Mención Diseño'),
('Licenciatura en Publicidad Mención Ilustración'),
('Licenciatura en Química'),
('Licenciatura en Sociología'), 
('Licenciatura en Teatro'),
('Licenciatura en Teatro Mención Actuación'),
('Licenciatura en Teatro Mención Dirección'),
('Licenciatura en Teatro Mención Dramaturgia'),
('Licenciatura en Trabajo Social'),
('Licenciatura en Turismo y Hotelería'),
('Medicina Veterinaria'),
('Pre-Médica/Medicina'),
('Téc en Turismo y Hotelería'),
('Tec Superior en Reparación y Ensamblaje de Computadoras'),
('Técnico en Fotografía y Medios Audiovisuales'),
('Técnico Radiólogo'),
('Técnico Superior en Atención Pre hospitalaria'),
('Técnico Superior en Farmacia'),
('Tecnología en Procesos Lácteos Alimentarios'),
('Tecnólogo Superior en Alimentos');

-- TABLAS -------------------------------------------------------------
-- --------------------------------------------------------------------

-- TABLA scl_persona en ella se alojaran los datos de una persona.
CREATE TABLE IF NOT EXISTS scl_personas(
	id INT NOT NULL auto_increment,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp default null,
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
    references ctg_tipoSangre(id) -- relacion con tipo de sangre.
) engine InnoDB;

-- TABLA scl_userslogin en ella se alojaran los datos de inicio de sesion y validacion de usuario.
CREATE TABLE IF NOT EXISTS scl_usersLogin(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL unique,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp default null,    
    usersName varchar(30) not null unique,
	usersPassword varchar(50) not null,
    securityToken varchar(200),
    primary key(id),
    constraint usersLogin_persona 
    foreign key(idPersona)
    references scl_personas(id) -- relacion con personas.
) engine InnoDB;

-- TABLA scl_registroNacimiento en ella se alojaran los datos de la partida de nacimiento como identidad verificada.

CREATE TABLE IF NOT EXISTS scl_registroNacimiento(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp default null,    
    
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
    references ctg_tipoDeclaracion(id), -- relacion con tipo de declaracion: oportuna o tardia
    	
    constraint registroNacimiento_tipoDNI
    foreign key(tipoDNI)
    references ctg_tipoDNI(id)  -- relacion con tipo de declaracion: oportuna o tardia
) engine InnoDB;

-- TABLA scl_identidad en ella se alojaran los datos que definen la identidad de la persona.
CREATE TABLE IF NOT EXISTS scl_identidad(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    idRegistroNacimiento INT not null,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp DEFAULT NULL,    
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
    references scl_registroNacimiento(id), -- relacion con registro nacimiento
    
    constraint identidad_paises 
    foreign key(nacionalidad)
    references ctg_paises(id), -- relacion con paises
        
    constraint identidad_genero 
    foreign key(genero)
    references ctg_genero(id) -- relacion con tipo de sexo.
) engine InnoDB;

-- TABLA scl_informacionContacto en ella se alojaran los datos para contactar a las personas.
CREATE TABLE IF NOT EXISTS scl_informacionContacto(
	id INT NOT NULL auto_increment,
    idPersona INT NOT NULL UNIQUE,
    fechaCreacion TIMESTAMP NOT NULL DEFAULT current_timestamp,
    fechaActualizacion TIMESTAMP on update current_timestamp default null,    
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

-- TABLA scl_informacionContacto en ella se alojaran los datos que definen la funciones (cargo) de las personas.
CREATE TABLE IF NOT EXISTS scl_roles_de_personas(
	id int not null auto_increment,
    idPersona int not null unique, #fk
    idRol int default null, #fk
    idAreaProfesional int default null, #fk
    f_inicio timestamp not null default current_timestamp,
    f_termino timestamp default null,
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
    fechaActualizacion timestamp on update current_timestamp default null,
    terminosAceptados int default null, -- relacionado ctg_terminos_y_politicas_aceptadas
    politicasAceptadas int default null, -- relacionado ctg_terminos_y_politicas_aceptadas
    primary key(id),
        
    constraint terminoypoliticas_persona
    foreign key (idPersona)
    references scl_personas(id),
    
    constraint terminos_opciones
    foreign key (terminosAceptados)
    references ctg_terminosPoliticas(id),    
    
    constraint politicas_opciones
    foreign key (politicasAceptadas)
    references ctg_terminosPoliticas(id)
) engine InnoDB;


# Esta contiene la lista de estudiantes activos en la base de datos.
# Esta tabla depende de la tabla scl_roles_de_personas
# Utiliza trigger para su llenado, actualizacion y borrado proveniente de scl_roles_de_personas.
create table if not exists scl_estudiantes_activos(
	id int not null auto_increment,    
    idRoles int not null, # fk
    idEstado int not null, # fk
    fechaCreacion timestamp default current_timestamp not null,
    fechaActualizacion timestamp on update current_timestamp default null,        
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
    fechaActualizacion timestamp on update current_timestamp default null,        
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

-- esta vista contiene la informacion para iniciar sesion.
CREATE view vw_users as
select lg.idPersona as id,lg.fechaActualizacion,usersName,usersPassword,email,securityToken 
from scl_userslogin as lg 
inner join scl_personas as p
on p.id=lg.idPersona
inner join scl_informacioncontacto as inf
on inf.idPersona=p.id;

# Esta vista contiene la informacion de todas las personas estudiantes.
CREATE VIEW vw_estudiantes
AS select p.id,nombres,apellido1,apellido2,sexo,fechaNacimiento,lugarNacimiento,TipoSangre,idRol,idAreaProfesional,estado 
from scl_personas as p inner join scl_roles_de_personas as rp
on p.id=rp.idPersona
where rp.idRol=5;

# Esta vista contiene la informacion de las personas estudiantes activas.
CREATE VIEW vw_estudiantes_activos
AS select p.id,nombres,apellido1,apellido2,sexo,fechaNacimiento,lugarNacimiento,TipoSangre,idRol,idAreaProfesional,estado 
from scl_personas as p inner join scl_roles_de_personas as rp
on p.id=rp.idPersona
where rp.idRol=5 and estado=1;

-- TRIGGER ------------------------------------------------------------------------
-- --------------------------------------------------------------------------------

# Trigger en scl_estudiantes_activos al insertar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER insert_roles_de_personas_estudiantes
AFTER INSERT ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    
		if (new.idRol=5 and new.estado=1) then
			insert into scl_estudiantes_activos (idRoles,idEstado) VALUES (new.id,new.estado);
		end if; 
	END //
DELIMITER ;

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
			if (new.idRol=5 and new.estado=1) then # verifica si es estudiante activo
				insert into scl_estudiantes_activos (idRoles,idEstado) VALUES (new.id,new.estado);
			end if;
		else
			if (new.idRol!=5 or new.estado!=1) then # verifica si no es estudiante o si no esta activo
				delete from scl_estudiantes_activos # lo borra de la tabla scl_estudiantes_activos 				
				where idRoles=old.id;
			end if;
		end if;
	END //
DELIMITER ;

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


# Trigger en scl_profesores_activos al insertar en la tabla  scl_roles_de_personas
DELIMITER //
CREATE TRIGGER insert_roles_de_personas_profesores
AFTER INSERT ON scl_roles_de_personas # se indica el momento (before=antes)de la ejecucion y en que evento (update) ocurrira  
FOR EACH ROW # se ejecutara por cada fila afectada
	BEGIN    
		if (new.idRol=5 and new.estado=1) then
			insert into scl_profesores_activos (idRoles,idEstado) VALUES (new.id,new.estado);
		end if; 
	END //
DELIMITER ;


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
			if (new.idRol=9 and new.estado=1) then # verifica si es profesor activo
				insert into scl_profesores_activos (idRoles,idEstado) VALUES (new.id,new.estado);
			end if;
		else
			if (new.idRol!=9 or new.estado!=1) then # verifica si no es profesor o si no esta activo
				delete from scl_profesores_activos # lo borra de la tabla scl_profesores_activos 				
				where idRoles=old.id;
			end if;
		end if;
	END //
DELIMITER ;


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
			insert into scl_registronacimiento (idPersona) -- crear registro para el registro de nacimiento        
			values (idPersona_var);
            
            -- 3.1
			insert into scl_terminos_y_politicas (idPersona) -- crear registro para los terminos y politicas aceptadas 
			values (idPersona_var);
			-- 4
			-- obtiene el ultimo id de la tabla scl_registronacimiento
			select id top -- top devuelve el primer registro encontrado, el de arriba.
			into reg_nacimiento_var -- envia el valor a la variable.
			from scl_registronacimiento
			order by id desc
			limit 1;        
         
			if (reg_nacimiento_var!=null) or (reg_nacimiento_var>0) then -- verifica que no este vacia la variable y sea mayor que 0.
				-- 5
				insert into scl_identidad (idPersona,idRegistroNacimiento) -- crea el registro de la identidad
				values (idPersona_var,reg_nacimiento_var);
				-- 6
				insert into scl_informacioncontacto (idPersona) -- crea el registro de la identidad
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
            
    if (idPersona_var=(select idPersona from scl_userslogin as p where p.idPersona=idPersona_var limit 1)) 
		or (idPersona_var<=0) or (idPersona_var=null) then
			set sql_error = true;
	else
		start transaction;
		-- 1 
        insert into scl_userslogin (idPersona,usersName,usersPassword) -- crear registro para el login
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