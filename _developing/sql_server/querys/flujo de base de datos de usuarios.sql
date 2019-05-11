-- FLUJO DE LA BASE DE DATOS DE USUARIOS --

# 1. Mediante procedimiento se crea una entrada a scl_personas

# 2. El mismo procedimiento crea la entredas en las tablas: slc_registronacimiento, scl_identidad, scl_informacioncontacto,
# y scl_roles_de_personas. Esto para mantener la integridad de los datos. Los mismos se completaran mediante UPDATE.

# --   IMPORTANTE: Asignar (UPDATE) el rol antes de crear el usuario. --
# --   El rol asignara los privilegios para usar la base de datos. --
# --   PRIVILEGIOS: ABD, Operador, Usuario Privilegiado, Usuario Limitado

# 3. Crear un usuario es opcional si se quiere que la persona tenga acceso al sistema. 
# se crea el usuario (scl_userslogin) relacionado a la persona ya existente mediante procedimiento y 

# 4. debe aceptar los terminos en la tabla scl_terminos_y_politicas.

