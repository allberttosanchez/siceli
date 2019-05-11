<?php
    require_once './../functions.php';
    require_once './../conexion.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        if(isset($_POST['user']) && isset($_POST['pass'])) {
            $user = limpiarDatos($_POST['user']);
            $pass = limpiarDatos($_POST['pass']);
        
            if ( (!isset($user)) || ($user == "") || ($user == null) || (strlen($user) < 4) ||
                (!isset($pass)) || ($pass == "") || ($pass == null) || (strlen($pass) < 4)  ) {
                    
                    echo "<script>alert('Usuario o contraseña Incorrectos.')</script>";
                    
                } else {
                    
                    if(!isset($conn)) {
                        echo "<script>alert('NO HAY CONEXION')</script>";
                    } else {

                        $statement = $conn->prepare("SELECT * FROM scl_userslogin WHERE usersName = :user ");                    
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