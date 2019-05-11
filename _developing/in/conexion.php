<?php
    $servidor = "localhost";
    $usuario = "root";
    $password = 123456;
    $nombrebasedatos = "siceli_usersdb";
    
    try {
      $conn = new PDO("mysql:host=$servidor;dbname=$nombrebasedatos", "$usuario", "$password");      
    } catch (\Throwable $th) {
      # Si hay error se ejecuta este codigo.
      die('<h1>Error al Cargar la Pagina. Contacte a su Administrador.</h1>'); 
      # Con die matamos la ejecucion del codigo.
    }
	
