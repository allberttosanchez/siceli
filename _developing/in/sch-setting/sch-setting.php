<?php
    //logica
    verificarSesion(); # ver fuctions.php
    //print_r($_SESSION['identificar']);

    $idRol = $_SESSION['identificar']['idPersona'];
    //echo "<script>alert('$idRol')</script>";
    
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
    
    if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
        # devuelve la informacion mediante AJAX - ver functions.js -> cargarDatos()
        
        $modalidadEscolar = $escuela->categoria('ctg_modalidad_escolar');
        //print_r($modalidadEscolar);        
        $tandaEscolar = $escuela->categoria('ctg_tanda_escolar');
        $sectorEscolar = $escuela->categoria('ctg_sector_escolar');
        $zonaEscolar = $escuela->categoria('ctg_zona_escolar');
        #------------------------------------------------------------------------------
        echo "<form action='' id='form-up-sch' method='get'>";
        #------------------------------------------------------------------------------
            echo "<label for='codigoCentroEscolar'>Codigo del Centro</label>
            <input id='codigoCentroEscolar' name='codigoCentroEscolar' type='text' value='";        
            if(isset($arrayEscuela[0])) {
                echo $arrayEscuela[0]['codigoCentroEscolar'];
            }
            echo "' class=''>";
            #------------------------------------------------------------------------------
            echo "<label for='nombreCentroEscolar'>Nombre</label>
            <input id='nombreCentroEscolar' name='nombreCentroEscolar' type='text' value='";            
            if(isset($arrayEscuela[0])) {
                echo $arrayEscuela[0]['nombreCentroEscolar'];
            }                
            echo "' class=''>";
            #------------------------------------------------------------------------------        
            echo "<label for='modalidadEscolar'>Modalidad</label>
            <select id='modalidadEscolar' name='modalidadEscolar'>";
            echo "<option value=''>-</opcion>";
            foreach ($modalidadEscolar as $categoria) {
                echo "<option value='".$categoria['id']."'";                    
                if (isset($arrayEscuela[0]['idModalidadEscolar'])) {
                        if ( $categoria['id'] == $arrayEscuela[0]['idModalidadEscolar'] ) {
                            echo " selected";
                        }
                }
                echo ">".$categoria['modalidadEscolar']."</option>";                                
            }                                
            echo "</select>";
            #------------------------------------------------------------------------------
            echo "<label for='tandaEscolar'>Tanda</label>
            <select id='tandaEscolar' name='tandaEscolar'>";
            echo "<option value=''>-</opcion>";
            foreach ($tandaEscolar as $categoria) {
                echo "<option value='".$categoria['id']."'";                    
                if (isset($arrayEscuela[0]['idTandaEscolar'])) {
                    if ( $categoria['id'] == $arrayEscuela[0]['idTandaEscolar'] ) {
                        echo " selected";
                    }
                }
                echo ">".$categoria['tandaEscolar']."</option>";                                
            }                                
            echo "</select>";
            #------------------------------------------------------------------------------      
            echo "<label for='direccion'>Dirección</label>
            <input id='direccion' name='direccion' type='text' value='";                
            if(isset($arrayEscuela[0])) {
                echo $arrayEscuela[0]['direccion'];
            } 
            echo "' class=''>";
            #------------------------------------------------------------------------------
            echo "<label for='sector'>Sector</label>
            <select id='sector' name='sector'>";
            echo "<option value=''>-</opcion>";
            foreach ($sectorEscolar as $categoria) {
                echo "<option value='".$categoria['id']."'";                    
                if ( isset($arrayEscuela[0]['idSector']) ) {
                    if ( $categoria['id'] == $arrayEscuela[0]['idSector'] ) {
                        echo " selected";
                    }
                }
                echo ">".$categoria['sectorEscolar']."</option>";                                
            }                                        
            echo "</select>";
            #------------------------------------------------------------------------------      
            echo "<label for='zona'>Zona</label>
            <select id='zona' name='zona'>";
            echo "<option value=''>-</opcion>";
            foreach ($zonaEscolar as $categoria) {                    
                echo "<option value='".$categoria['id']."'";                    
                if ( isset($arrayEscuela[0]['idZona']) ) {
                    if ( $categoria['id'] == $arrayEscuela[0]['idZona'] ) {
                        echo " selected";
                    }
                }
                echo ">".$categoria['zonaEscolar']."</option>";                                
            }                                        
            echo "</select>";
            #------------------------------------------------------------------------------
            echo "<label for='telefono'>Telefono</label>
            <input id='telefono' name='telefono' type='text' value='";
            if(isset($arrayEscuela[0])) {  
                echo $arrayEscuela[0]['telefono'];
            }    
            echo "' class=''>";
            #------------------------------------------------------------------------------
            echo "<label for='fechaApertura'>Fecha Apertura</label>
            <input id='fechaApertura' name='fechaApertura' type='date' value='";
            if(isset($arrayEscuela[0])) {  
                echo $arrayEscuela[0]['fechaApertura'];
            }    
            echo "' class=''>";
        #------------------------------------------------------------------------------
        echo "<button type='submit' class='btn btn-primary' id='up-form-btn'>Actualizar</button>
        </form>";
        #------------------------------------------------------------------------------
    } else {
        include './../views/sch-setting.view.php';        
    }