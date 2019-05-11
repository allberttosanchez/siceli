<?php

function limpiarDatos($datos){
    $datos = trim($datos);
	//trim elimina espacios en blanco al principio y al final
	$datos = stripcslashes($datos);
	//stripslashes eliminas las barras / para limpiar el texto.
	$datos = htmlspecialchars($datos);
	//htmlspecialchars eliminar los caracteres especiales.
	return $datos;    
}

function errorLogin(){
	$errorMsj = "<script>
		window.addEventListener('load', function(){
			alert('Usuario o contraseña Incorrectos.')
		});
	</script>";

	return $errorMsj; 
}