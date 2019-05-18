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
        'usuarios' => 'siceli_usersdb',
        'asignaturas' => 'siceli_asignaturas',
        'sesiones' => 'siceli_sesionesdb',
        'records' => 'siceli_record_db'  
    );
    
    # método singleton
    public static function singletonConexion() {       
        
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }

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

        if (self::$i == "u") {
            $nombrebasedatos = $this->nombrebd['usuarios'];
        } else if (self::$i == "a") {
            $nombrebasedatos = $this->nombrebd['asignaturas'];
        } else if (self::$i == "s") {
            $nombrebasedatos = $this->nombrebd['sesiones'];
        } else if (self::$i == "r") {
            $nombrebasedatos = $this->nombrebd['records'];
        }

        try {
            return new PDO("mysql:host=$this->servidor;dbname=$nombrebasedatos", "$usuario", "$password");      
        } catch (\Throwable $th) {
            # Si hay error se ejecuta este codigo.
            die('<h1>Error al Cargar la Pagina. Contacte a su Administrador.</h1>'); 
            # Con die matamos la ejecucion del codigo.
        }
        
    }

    # Evita que el objeto se pueda clonar
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }

    /* public function verificarSingleton(){
        return self::$e;
    } */


}

class Persona {    
    private static $instancia;        
    private static $idPersona;
    private static $userName;
    
     # método singleton
     public static function singletonPersona(){        
        
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }

    public function login($privilegios,$basedatos,$user,$pass) {
        
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
 
    public function identificar(){
        return $identify = array ('idPersona' => self::$idPersona,'userName' => self::$userName);
    }

    public function nuevaPersona() {

    }

    # Evita que el objeto se pueda clonar
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }

}