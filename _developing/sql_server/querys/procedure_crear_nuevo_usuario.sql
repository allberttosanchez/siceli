delimiter //
-- este procedure crea un usuario solicitado por otro usuario con privilegios desde adentro del sistema.
create procedure crear_usuario_interno(
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
delimiter ;

-- call crear_usuario_interno(3,'akuuh','123456abc')