-- este trigger insertar los registros relacionados a la persona para vincular su integridad relacional.
-- drop trigger insert_personas
delimiter //
create trigger insert_personas
after insert on scl_personas
for each row

begin
	declare reg_nacimiento_var int default null;      
        
    if new.id>0 or new.id!=null then
		-- 1 
        insert into scl_userslogin (idPersona,usersName,usersPassword) -- crear registro para el login
        values (new.id,concat('temp_name',new.id),concat('temp_password',new.id)); 
        -- 2
        insert into scl_registronacimiento (idPersona) -- crear registro para el registro de nacimiento        
        values (new.id);
        -- obtiene el ultimo id de la tabla scl_registronacimiento
        select id top -- top devuelve el primer registro encontrado, el de arriba.
        into reg_nacimiento_var -- envia el valor a la variable.
        from scl_registronacimiento
        order by id desc
        limit 1;        
        -- 3 
        if reg_nacimiento_var!=null or reg_nacimiento_var>0 then -- verifica que no este vacia la variable y sea mayor que 0.
			insert into scl_identidad (idPersona,idRegistroNacimiento) -- crea el registro de la identidad
			values (new.id,reg_nacimiento_var);
		else
			delete from scl_registronacimiento where idPersona=new.id;            
            delete from scl_userslogin where idPersona=new.id;
			SIGNAL sqlstate 'HY000'
			SET message_text = 'El usuario no fue creado.';
		end if;
        -- 4
        insert into scl_informacioncontacto (idPersona) -- crea el registro de la identidad
        values (new.id);
        -- 5
        insert into scl_roles_de_personas (idPersona) -- crea el registro de la identidad
        values (new.id);
    else
        delete from scl_roles_de_personas where idPersona=new.id;    
        delete from scl_informacioncontacto where idPersona=new.id;		
        delete from scl_identidad where idPersona=new.id;            
        delete from scl_registronacimiento where idPersona=new.id;    
        delete from scl_userslogin where idPersona=new.id;
        delete from scl_personas where idPersona=new.id;
        SIGNAL sqlstate 'HY000'
        SET message_text = 'El usuario no fue creado.';
    end if;
    
end //

delimiter ;