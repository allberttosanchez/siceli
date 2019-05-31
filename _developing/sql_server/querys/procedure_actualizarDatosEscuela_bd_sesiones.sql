# drop procedure actualizarDatos;

DELIMITER $$
CREATE PROCEDURE actualizarDatos(
	in tipoDatos int(2),    
    in idEscuela int(6),
    in cadenaDeDatos varchar(1800)    
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
        
	SELECT SUBSTRING_INDEX(cadenaDeDatos,'$',1)
	INTO codigoCentroEscolar_var;
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',2),'$',-1) as nombreCentroEscolar        
	INTO nombreCentroEscolar_var;
        
    -- UPPER convierte la cadena a MAYUSCULA.
    -- LOWER convierte la cadena a minuscula.
    
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',3),'$',-1) as modalidadEscolar        
	INTO modalidadEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',4),'$',-1) as tandaEscolar        
    INTO tandaEscolar_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',5),'$',-1) as direccion        
	INTO direccion_var;
        
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',6),'$',-1) as sector        
	INTO sector_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',7),'$',-1) as zona        
	INTO zona_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',8),'$',-1) as zona        
	INTO telefono_var;
        
	SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(cadenaDeDatos,'$',9),'$',-1) as zona
	INTO fechaApertura_var;
    -- SELECT SUBSTRING_INDEX(SUBSTRING_INDEX('10318$Liceo Francisco Gregorio Billini PREPARA$PREPARA$Dominical$C/Gastón F. Deligne Esq. Pdte. Billini, Baní, Prov. Peravia, Rep. Dom.$PUBLICO$RURAL$809-522-7259$2019-05-05','$',7),'$',-1) as cadena;
    
    
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