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
    private $nombrebd = array(
        'usuarios' => 'siceli_usersdb',
        'asignaturas' => 'siceli_asignaturas',
        'sesiones' => 'siceli_sesionesdb',
        'records' => 'siceli_record_db'  
    );
    
    # método singleton
    public static function singleton($e,$i) {
        self::$e = $e;
        self::$i = $i;
        
        if (!isset(self::$instancia)) {
            $miclase = __CLASS__; # __CLASS__ devuelve el nombre de esta clase.
            self::$instancia = new $miclase;
        } 

        return self::$instancia;

    }

    # invoca la conexion.
    public function conexion() {                
        
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

}