<?php
    //logica

    verificarSesion(); # ver fuctions.php
    //print_r($_SESSION['identificar']);

    $idRol = $_SESSION['identificar']['idPersona'];
    //echo "<script>alert('$idRol')</script>";

    $escuela = Escuela::singletonEscuela();
    
    # devuelve un array con los datos de la escuela.
    $arrayEscuela = $escuela->identificar($idRol);
    //print_r($arrayEscuela);
    
    if ( $_SERVER['REQUEST_METHOD'] == 'GET' ) {         
        
        /* $codigoCentroEscolar = ( isset($_GET['codigoCentroEscolar']) ) ? limpiarDatos($_GET['codigoCentroEscolar']):"";
        $nombreCentroEscolar = (isset($_GET['nombreCentroEscolar'])) ? limpiarDatos($_GET['nombreCentroEscolar']):"";
        $modalidadEscolar = (isset($_GET['modalidadEscolar'])) ? limpiarDatos($_GET['modalidadEscolar']):"";
        $tandaEscolar = (isset($_GET['tandaEscolar'])) ? limpiarDatos($_GET['tandaEscolar']):"";
        $direccion = (isset($_GET['direccion'])) ? limpiarDatos($_GET['direccion']):"";
        $sector = (isset($_GET['sector'])) ? limpiarDatos($_GET['sector']):"";
        $zona = (isset($_GET['zona'])) ? limpiarDatos($_GET['zona']):"";
        $telefono = (isset($_GET['telefono'])) ? limpiarDatos($_GET['telefono']):""; */

        $datosEscuela = array(
            'codigoCentroEscolar' => ( isset($_GET['codigoCentroEscolar']) ) ? limpiarDatos($_GET['codigoCentroEscolar']):"",
            'nombreCentroEscolar' => (isset($_GET['nombreCentroEscolar'])) ? limpiarDatos($_GET['nombreCentroEscolar']):"",
            'modalidadEscolar' => (isset($_GET['modalidadEscolar'])) ? limpiarDatos($_GET['modalidadEscolar']):"",
            'tandaEscolar' => (isset($_GET['tandaEscolar'])) ? limpiarDatos($_GET['tandaEscolar']):"",
            'direccion' => (isset($_GET['direccion'])) ? limpiarDatos($_GET['direccion']):"",
            'sector' => (isset($_GET['sector'])) ? limpiarDatos($_GET['sector']):"",
            'zona' => (isset($_GET['zona'])) ? limpiarDatos($_GET['zona']):"",
            'telefono' => (isset($_GET['telefono'])) ? limpiarDatos($_GET['telefono']):""
        );
        //print_r($datosEscuela);
        
        //$escuela->actualizarDatos($datosEscuela);

    }
    
    if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
        # devuelve la informacion mediante AJAX - ver functions.js -> cargarDatos()
        if(isset($arrayEscuela)) {
        echo "<form action='' id='form-up-sch' method='get'>
        <label for='codigoCentroEscolar'>Codigo del Centro</label>
        <input id='codigoCentroEscolar' name='codigoCentroEscolar' type='text' value='".
        
                $arrayEscuela[0]['codigoCentroEscolar']
                ."' class=''>
                <label for='nombreCentroEscolar'>Nombre</label>
                <input id='nombreCentroEscolar' name='nombreCentroEscolar' type='text' value='". 
            
                $arrayEscuela[0]['nombreCentroEscolar']
                ."' class=''>
                <label for='modalidadEscolar'>Modalidad</label>
                <input id='modalidadEscolar' name='modalidadEscolar' type='text' value='". 
                
                $arrayEscuela[0]['modalidadEscolar']
                ."' class=''>
                <label for='tandaEscolar'>Tanda Escolar</label>
                <input id='tandaEscolar' name='tandaEscolar' type='text' value='". 
                
                $arrayEscuela[0]['tandaEscolar']
                ."' class=''>
                <label for='direccion'>Dirección</label>
                <input id='direccion' name='direccion' type='text' value='". 
                
                $arrayEscuela[0]['direccion']
                ."' class=''>
                <label for='sector'>Sector</label>
                <input id='sector' name='sector' type='text' value='". 
                
                $arrayEscuela[0]['sectorEscolar']
                ."' class=''>
                <label for='zona'>Zona</label>
                <input id='zona' name='zona' type='text' value='". 
                
                $arrayEscuela[0]['zonaEscolar']
                ."' class=''>
                <label for='telefono'>Telefono</label>
                <input id='telefono' name='telefono' type='text' value='". 
                
                $arrayEscuela[0]['telefono']
                ."' class=''>
                <button type='submit' class='btn btn-primary' id='up-form-btn'>Actualizar</button>
            </form>";
    }
    } else {
        include './../views/sch-setting.view.php';        
    }