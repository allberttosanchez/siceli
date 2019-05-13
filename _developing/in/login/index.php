<?php
    require_once './../functions.php';
    require_once './../class.php';

    # verifica si se envio un formulario por el metodo post.
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        if(isset($_POST['user']) && isset($_POST['pass'])) {
            $user = limpiarDatos($_POST['user']);
            $pass = limpiarDatos($_POST['pass']);
            
            # validacion de usuario.
            if ( (!isset($user)) || ($user == "") || ($user == null) || (strlen($user) < 4) ||
                (!isset($pass)) || ($pass == "") || ($pass == null) || (strlen($pass) < 4)  ) {
                    
                    echo "<script>alert('Usuario o contraseña Incorrectos.')</script>";
                    
                } else {
                    
                    # se conecta a la base de datos mediante patron Singleton.
                    $conn = Conexion::singleton(4,'u'); # (ver class.php - conexion)
                    # 4 = usuario:reader, u = basedatos:usuarios 
                    
                    $conn = $conn->conexion();

                    if( !isset($conn) ) {
                        echo "<script>alert('NO HAY CONEXION')</script>";
                    } else {
                        $sql = "SELECT * FROM scl_userslogin WHERE usersName = :user ";
                        $statement = $conn->prepare($sql);                    
                        $statement->execute(array(':user' => $user));
                        $resultado = $statement->fetchAll();
                        
                        foreach ($resultado as $fila) {
                            # atrapa el password de la base de datos.
                            $fetchPassword = $fila['usersPassword'];
                        } 
                        
                        # Verificamos si se obtuvo el password de la base de datos.
                        if (isset($fetchPassword)) {
                            # Verificamos si el password introducido coincide.
                            if ($fetchPassword == (int)$pass) {
                                # Si los datos coinciden redireccionar a dashboard.php
                                header('Location: ./dashboard.php');

                            } else {
                                # Devuelve un mensaje de error. (ver funcions.php)
                               echo errorLogin();
                            }
                        } else {
                            echo errorLogin();
                        }   
                        
                    }

                } 
            } else {
                echo errorLogin();
            }   
    } else {
        
        if ( session_start() ) {
            session_destroy();
        }
        
    }

    include './login.php';