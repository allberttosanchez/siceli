<?php
   // index sub-principal
   // incluye rutas y logica para redireccionar.

   require_once './functions.php';
   require_once './class.php';

   verificarSesion(); # ver fuctions.php

   # recibe el parametro precedido del signo ? por la url.
   $url = limpiarDatos($_SERVER['REQUEST_URI']);
    
   # verifica si recibio la cadena esperada por url.
if (strpos($url,'login')>0) {
   header('Location: ./login/');

} else if (strpos($url,'dashboard')>0) { 
   header('Location: ./dashboard/');

} else if (strpos($url,'sch-setting')>0) { 
   header('Location: ./sch-setting/');

} else if (strpos($url,'sch-students')>0) { 
   header('Location: ./sch-students/');
      
} else if (strpos($url,'sch-teachers')>0) { 
   header('Location: ./sch-teachers/');
      
} else {
   header('Location: ./../');
}
    