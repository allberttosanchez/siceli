SELECT * FROM siceli_usersdb.scl_roles_de_personas;

select nombres,apellido1,apellido2,rol,pro.nombre as 'Area Profesional'
from scl_personas as p inner join scl_roles_de_personas as r
on p.id=r.idPersona inner join ctg_roles as rl
on r.idRol=rl.id inner join ctg_area_profesional as pro
on r.idAreaProfesional=pro.id
where r.idRol=9 