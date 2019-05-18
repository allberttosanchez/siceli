<?php

     # verifica si se envio un formulario por el metodo post.
     if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        
        if(isset($_POST['user']) && isset($_POST['pass'])) {
            $user = limpiarDatos($_POST['user']);
            $pass = limpiarDatos($_POST['pass']);
                                          
            # mediante patron Singleton crea instancia.
            $persona = Persona::singletonPersona(); 
            
            # se conecta a la base de datos.
            $huboLogin = $persona->login(4,'u',$user,$pass); # (ver class.php - Persona)
            # 4 = privilegios de usuario:reader, u = basedatos:usuarios
            # metodo login recibe 4 parametros: tipoDeUsuario,InicialBaseDatos,usuario,contraseña
            # verifica los datos de conexion para iniciar sesion.
            # devuelve true o false;                    

            if ($huboLogin) {
                
                $identificar = $persona->identificar();
                # devuelve un array con los datos del usuario. idPersona y userName.
                
                session_start();
                # $_SESSION atrapa los valores y los guarda en la sesion.
                # se invocan por la misma $_SESSION
                $_SESSION['identificar'] = $identificar;
                header('Location: ./../dashboard/');
            } else {
                # Devuelve un mensaje de error. (ver funcions.php)
                echo errorLogin();
            }

        } else {
            echo errorLogin();
        }

    } else if ( session_start() ) {
        session_destroy();
    }

    include './../views/login.view.php';