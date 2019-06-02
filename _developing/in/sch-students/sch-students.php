<?php
    //logica
    verificarSesion(); # ver fuctions.php
    //print_r($_SESSION['identificar']);

    $idRol = $_SESSION['identificar']['idPersona'];
    //echo "<script>alert('$idRol')</script>";
    
    # el selector sirve para indicar cual parte del codigo se va a ejecutar.
    # recive su valor por AJAX -> ver functions.js
    if (isset($_POST['selector'])) {
        $selector = limpiarDatos($_POST['selector']);        
    } 

    $nuevodatosEscuela = array(
        'codigoCentroEscolar' => ( isset($_GET['codigoCentroEscolar']) ) ? limpiarDatos($_GET['codigoCentroEscolar']):null,
        'nombreCentroEscolar' => (isset($_GET['nombreCentroEscolar'])) ? limpiarDatos($_GET['nombreCentroEscolar']):null,
        'modalidadEscolar' => (isset($_GET['modalidadEscolar'])) ? limpiarDatos($_GET['modalidadEscolar']):null,
        'tandaEscolar' => (isset($_GET['tandaEscolar'])) ? limpiarDatos($_GET['tandaEscolar']):null,
        'direccion' => (isset($_GET['direccion'])) ? limpiarDatos($_GET['direccion']):null,
        'sector' => (isset($_GET['sector'])) ? limpiarDatos($_GET['sector']):null,
        'zona' => (isset($_GET['zona'])) ? limpiarDatos($_GET['zona']):null,
        'telefono' => (isset($_GET['telefono'])) ? limpiarDatos($_GET['telefono']):null,
        'fechaApertura' => (isset($_GET['fechaApertura'])) ? limpiarDatos($_GET['fechaApertura']):null
    );
    //print_r($nuevodatosEscuela);


    $escuela = Escuela::singletonEscuela();
    
    # devuelve un array con los datos de la escuela.
    # si no hay datos devuelve false.
    $arrayEscuela = $escuela->identificar($idRol);
    //print_r($arrayEscuela);
    # IdResultado guarda el id del registro de identificacion de la escuela.    
    
    if ( ($_SERVER['REQUEST_METHOD'] == 'GET') and isset($nuevodatosEscuela['nombreCentroEscolar']) ) {         
                
        if (!$arrayEscuela) {
            
            $datosEnviados = $escuela->insertarDatos($nuevodatosEscuela);           
            
            if($datosEnviados) {
                header('Location: ./');
            }

        } else {
            
            $idEscuela = $arrayEscuela[0]['id'];        
            
            if ( strlen($nuevodatosEscuela['nombreCentroEscolar']) > 8 ) {
                
                $datosEnviados = $escuela->actualizarDatos($idEscuela,$nuevodatosEscuela);
                
                if ($datosEnviados) {
                    header('Location: ./');
                } else {                
                    echo "<script>alert('REVISE LOS DATOS Y TRATE DE NUEVO')</script>";
                }
                
            } else {
                echo "<script>
                
                window.addEventListener('load', function(){ 
                    alert('Introduzca el nombre del Centro Educativo'); 
                });
                
                </script>";     
            }
            
        }
    } 
    
    if ( ($_SERVER['REQUEST_METHOD'] == 'POST') && ($selector == 1) ) {
        # devuelve la informacion mediante AJAX - ver functions.js -> cargarDatos()
        
        
    } else if ( ($_SERVER['REQUEST_METHOD'] == 'POST') && ($selector == 2) ) {
        
       
        echo "</form>";
    } else {
        include './../views/sch-students.view.php';        
    }