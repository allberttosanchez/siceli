<?php
        
class Conexion {

    private static $instancia;    
    private $servidor = "localhost";  # nombre del servidor.
    public static $e; # obtiene el valor para el usuario Y password del servidor.
    public static $i; # obtiene el valor para la base de datos del servidor.
    
    # usuario con privilegio de solo lectura.
    private $lector = array(            
        'usuario' => 'reader',
        'password' => 'SICELI!LEC'            
    );

    # Usuario con privilegio de insercion, actualizacion y lectura.
    private $operario = array(            
        'usuario' => 'operator',
        'password' => 'SICELI2019!DBA'            
    );

    # Usuario con privilegio de avanzados.
    private $admin = array(            
        'usuario' => 'admin',
        'password' => 'SICELI%2019DBA'            
    );
    # Usuario con todos los permisos.
    private $dba = array(            
        'usuario' => 'root',
        'password' => 'SICELI%2019!DBA'            
    );
    # Contiene los nombres de las bases de datos.
    protected $nombrebd = array(
        'siceli' => 'siceli_proyectdb'         
    );
# ----------------------------------------------------   
    # método singleton
    public static function singletonConexion() {       
        
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }
# ----------------------------------------------------
    # invoca la conexion.
    public function conn($e,$i) {                
        self::$e = $e;
        self::$i = $i;

        switch (self::$e) {
            case 1: # root
                $usuario = $this->dba['usuario'];
                $password = $this->dba['password'];
                break;
            case 2: # admin
                $usuario = $this->admin['usuario'];
                $password = $this->admin['password'];
                break;
            case 3: # operator
                $usuario = $this->operario['usuario'];
                $password = $this->operario['password'];
                break;
            case 4: # reader
                $usuario = $this->lector['usuario'];
                $password = $this->lector['password'];
                break;
        }

        if (self::$i == "s") {
            $nombrebasedatos = $this->nombrebd['siceli'];
        } 

        try {
            return new PDO("mysql:host=$this->servidor;dbname=$nombrebasedatos", "$usuario", "$password");      
        } catch (\Throwable $th) {
            # Si hay error se ejecuta este codigo.
            die('<h1>Error al Cargar la Pagina. Contacte a su Administrador.</h1>'); 
            # Con die matamos la ejecucion del codigo.
        }
        
    }
# --------------------------------------------------
    # Evita que el objeto se pueda clonar
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }

    /* public function verificarSingleton(){
        return self::$e;
    } */


}
#--------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------
class Persona {    
    private static $instancia;        
    private static $idPersona;
    private static $userName;
    private static $idRol;
    private static $estado;
    private static $privilegios;
    private static $basedatos;

     # método singleton
     public static function singletonPersona(){        
        
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }
# -------------------------------------------------------
    public function login($privilegios,$basedatos,$user,$pass) {
        self::$privilegios = $privilegios;
        self::$basedatos = $basedatos;
        
        # validacion de usuario.
        if ( (!isset($user)) || ($user == "") || ($user == null) || (strlen($user) < 4) ||
        (!isset($pass)) || ($pass == "") || ($pass == null) || (strlen($pass) < 4)  ) {
            
            echo "<script>alert('Usuario o contraseña Incorrectos.')</script>";
            
        } else {

            # se conecta a la base de datos mediante patron Singleton.
            $conn = Conexion::singletonConexion();

            $conn = $conn->conn($privilegios,$basedatos); # (ver class.php - conexion)
            
            if( !isset($conn) ) {
                echo "<script>alert('NO HAY CONEXION')</script>";
            } else {
                
                $sql = "SELECT * FROM scl_userslogin WHERE usersName = :user ";
                
                $statement = $conn->prepare($sql);                    
                # atrapa el usuario de la base de datos.
                $statement->execute(array(':user' => $user));
                $resultado = $statement->fetchAll();
                            
                foreach ($resultado as $fila) {
                    # atrapa el password de la base de datos.
                    self::$idPersona = $fila['idPersona'];
                    self::$userName = $fila['usersName'];
                    $fetchPassword = $fila['usersPassword'];
                } 
                            
                # Verificamos si se obtuvo el password de la base de datos.
                if (isset($fetchPassword)) {
                    # Verificamos si el password introducido coincide.
                    if ($fetchPassword == $pass) {
                        # Si los datos coinciden devuelve true.
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }   
                            
            }

        }           
    }  
# -------------------------------------------------------
    public function rol($idPersona) {        
                
        $conn = Conexion::singletonConexion(); 

        $conn = $conn->conn(4,"s"); # Ver clase Conexion.

        if( !isset($conn) ) {
            //echo "<script>alert('NO HAY CONEXION EN ROL')</script>";
        } else {
            //echo "<script>alert('HAY CONEXION EN ROL')</script>";
            $sql = "SELECT * FROM scl_roles_de_personas WHERE idPersona = :idPersona ";
                
            $statement = $conn->prepare($sql);                    
            # atrapa el usuario de la base de datos.
            $statement->execute(array(':idPersona' => $idPersona));
            $resultado = $statement->fetchAll();
                        
            foreach ($resultado as $fila) {
                
                self::$idRol = $fila['idRol'];
                self::$estado = $fila['estado'];                
            } 
            
            # Devuelve un array con id y estado de la entidad roles personas.
            return  $roles = array ('idRol' => self::$idRol,'estado' => self::$estado);
        }
    }
# --------------------------------------------------------
    public function identificar(){
        return $identify = array ('idPersona' => self::$idPersona,'userName' => self::$userName);
    }
# --------------------------------------------------------
    public function nuevaPersona() {

    }
# --------------------------------------------------------
    # Evita que el objeto se pueda clonar
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }

}
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
class Escuela {
    public static $instancia;
    public static $idRol;

# --------------------------------------------------

    public function categoria($nombreCategoria){

        # se conecta a la base de datos mediante patron Singleton.
        $conn = Conexion::singletonConexion();

        # conexion de reader (4), base datos sesiones "s"
        $conn = $conn->conn(4,"s"); # (ver class.php - conexion)

        if( !isset($conn) ) {
            echo "<script>alert('NO HAY CONEXION en categoria escuela')</script>";
        } else {
            //echo "<script>alert('la conexion se mantiene en categoria escuela'); </script>";
            
            # Este array contiene los valores esperados.
            $arrayCategoriasBaseDatosSesiones = array(
                'ctg_anno_escolar',
                'ctg_duracion_sesion_clase',
                'ctg_grados',
                'ctg_horario_diario_sesion',
                'ctg_modalidad_escolar',
                'ctg_periodo_escolar',
                'ctg_periodo_semanal_sesion', 
                'ctg_periodo_sesiones',
                'ctg_seccion_escolar',
                'ctg_tanda_escolar',
                'ctg_sector_escolar',                
                'ctg_zona_escolar' 
            );
                # count() cuenta la posiciones utilizadas de un array (solo primer nivel).
                # count(array,COUNT_RECURSIVE) cuenta la posiciones utilizadas de un array (todos los niveles).
                $sql = "SELECT * FROM $nombreCategoria";
                $statement = $conn->prepare($sql);                    

            for ($i=0; $i < count($arrayCategoriasBaseDatosSesiones) ; $i++) { 
                    
                if ( $arrayCategoriasBaseDatosSesiones[$i] == $nombreCategoria ) {
                    $statement->execute();
                    # atrapa los datos de la base de datos en un array llamado resultado.
                    $resultado = $statement->fetchAll();  
                    # devuelve un arraydimensional debe ser recorrido con foreach.                  
                    return $resultado;
                } 
            }

            
        }
    }
# --------------------------------------------------
    # Devuelve un array con los datos de la escuela.
    public function identificar($idRol){
            self::$idRol = (int)$idRol;

        # se conecta a la base de datos mediante patron Singleton.
        $conn = Conexion::singletonConexion();
        
        # conexion de reader (4), base datos sesiones "s"
        $conn4 = $conn->conn(4,"s"); # (ver class.php - conexion)

        if( !isset($conn4) ) {
            echo "<script>alert('NO HAY CONEXION en escuela')</script>";
        } else {
            //echo "<script>alert('la conexion se mantiene en escuela'); </script>";

            $persona = Persona::singletonPersona();

            # devuelve un array con id de rol y estado del rol.
            $arrayRoles = $persona->rol(self::$idRol);
            
            // echo "<script>alert('".$arrayRoles["idRol"]."');</script>";    
            if ( ( (int)$arrayRoles['idRol'] > 2 ) && ( (int)$arrayRoles['estado'] != 1 ) ) {
                //echo "<script>alert('No tiene suficiente permisos'); </script>";
            } else {
                
                //print_r($arrayRoles);
                # se conecta a la base de datos siceli_sesionesdb mediante el rol asignado.
                $conn = $conn->conn( (int)$arrayRoles['idRol'],"s" ); # (ver class.php - conexion)

                if( !isset($conn) ) {                
                    echo "<script>alert('NO HAY CONEXION ROLES')</script>";
                } else {

                    $sql = "SELECT * FROM ses_descripcion_centro AS dc
                            ORDER BY dc.id DESC LIMIT 1";
                        
                    $statement = $conn->prepare($sql);                    
                    # atrapa el usuario de la base de datos.
                    $statement->execute();
                    $resultado = $statement->fetchAll();
                    
                    //print_r($resultado);                    
                    # devuelve el array con los valores encontrados de la escuela.
                    return $resultado;                               
                
                }
            }



        }

    }
# --------------------------------------------------

public function insertarDatos($arrayDeDatos) {

    $conn = Conexion::singletonConexion();
    $conn = $conn->conn(2,'s');
    
    if( !isset($conn) ) {
        //echo "<script>alert('NO HAY CONEXION en escuela')</script>";
    } else {
        //echo "<script>alert('la conexion se mantiene en actualizardatos'); </script>";     
                    
        # implode convierte el array en una cadena separada por el simbolo elegido.
        $cadenaDeDatos = implode( "||", $arrayDeDatos );
        //echo $cadenaDeDatos;
        //echo "<script>alert('$cadenaDeDatos'); </script>"; 
        
        # el procedure insertarDatos recibre 2 parametros
        # el primero un numero que identifica el tipodeDatos a actualizar
        # el segundo la cadena con los datos.
        # Ver procedure insetarDatos() en base de datos sesiones.
        $statement = $conn->prepare("CALL insertarDatos(1,'$cadenaDeDatos')");
        $statement->execute();
        $resultado = $statement->fetchAll();

        //print_r($resultado);
        if ($resultado) {
            return true;                
        } else {                
            return false;
        }
    }
}
# --------------------------------------------------

    public function actualizarDatos($idEscuela,$arrayDeDatos) {

        $conn = Conexion::singletonConexion();
        $conn = $conn->conn(2,'s');
        
        if( !isset($conn) ) {
            //echo "<script>alert('NO HAY CONEXION en escuela')</script>";
        } else {
            //echo "<script>alert('la conexion se mantiene en actualizardatos'); </script>";     
                        
            # implode convierte el array en una cadena separada por el simbolo elegido.
            $cadenaDeDatos = implode( "||", $arrayDeDatos );
            //echo $cadenaDeDatos;
            //echo "<script>alert('$cadenaDeDatos'); </script>"; 
            # el procedure actulizarDatos recibre 3 parametros
            # el primero un numero que identifica el tipodeDatos a actualizar
            # el segundo el id de registro a actualizar
            # el tercero la cadena con los datos.
            # Ver procedure actulizarDatos() en base de datos sesiones.
            
            
            $statement = $conn->prepare("CALL actualizarDatos(1,$idEscuela,'$cadenaDeDatos')");
            $statement->execute();
            $resultado = $statement->fetchAll();

            //print_r($resultado);
            if ($resultado) {
                return true;                
            } else {                
                return false;
            }
        }
    }
# --------------------------------------------------
    # método singleton
    public static function singletonEscuela() {       
            
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }
# --------------------------------------------------
    # Evita que el objeto se pueda clonar
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }

}