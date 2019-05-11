<?php     
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = htmlspecialchars($_POST['email']);    
    $to = 'centrolosyaguarizos@gmail.com';
    $subject = "mail from Escuela Los Yaguarizos";
    $message = htmlspecialchars($_POST['message']);
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
?>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mensaje Enviado</title> 
    </head>
    <body>
        <h1> Mensaje Enviado Correctamente </h1>
        <p>
            <a href="../contacto">Volver a la pagina anterior</a>
        </p>
        <p>
            <a href="http://www.escuelalosyaguarizos.tk">ir a Inicio</a>
        </p>        
    </body>
</html>