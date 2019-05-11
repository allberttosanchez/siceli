-- este procedure crea un usuario solicitado por otro usuario con privilegios desde adentro del sistema.
drop procedure agregar_persona;
delimiter //
create procedure agregar_persona(
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
delimiter ;

-- call agregar_persona('lula','pana',1,'2008-01-01',NULL,NULL);