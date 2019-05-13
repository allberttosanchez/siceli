<?php
        
class conexion  {
        
    private $servidor = "localhost";  # nombre del servidor.
    private $e; # obtiene el valor para el usuario del servidor.
    private $i; # obtiene el valor para la base de datos del servidor.
    
    private $lector = array(            
        'usuario' => 'reader',
        'password' => 'SICELI!LEC'            
    );

    private $operario = array(            
        'usuario' => 'operator',
        'password' => 'SICELI2019!DBA'            
    );

    private $admin = array(            
        'usuario' => 'admin',
        'password' => 'SICELI%2019DBA'            
    );

    private $dba = array(            
        'usuario' => 'root',
        'password' => 'SICELI%2019!DBA'            
    );

    private $nombrebd = array(
        'usuarios' => 'siceli_usersdb',
        'asignaturas' => 'siceli_asignaturas',
        'sesiones' => 'siceli_sesionesdb',
        'records' => 'siceli_record_db'  
    );
  
    public function __construct($e,$i) {                
        $this->e = $e;
        $this->i = $i;
    }

    public function conexion() {                
            $e = $this->e;
            $i = $this->i;

        switch ($e) {
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

        if ($i == "u") {
            $nombrebasedatos = $this->nombrebd['usuarios'];
        } else if ($i == "a") {
            $nombrebasedatos = $this->nombrebd['asignaturas'];
        } else if ($i == "s") {
            $nombrebasedatos = $this->nombrebd['sesiones'];
        } else if ($i == "r") {
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

}