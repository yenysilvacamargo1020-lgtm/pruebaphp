<?php
require_once 'config/database.php';
class Usuario{
    public $db;
    public function _construct(){
        $this ->db = database::conectar();
    }
    public $id_usuario;
    public $nombre;
    public $apellido;
    public $email;
    public $password;
    public $rol;
    public $imagen;

    function getId_usuario(){
        return $this ->id_usuario;
    }
    function getId_nombre(){
        return $this ->nombre;
    }
    function getapellido(){
        return $this ->apellido;
    }
    function getemail(){
        return $this ->email;
    }
    function getpassword(){
        return $this ->password;
    }
    function getimagen(){
        return $this ->imagen;
    }

    function setId_usuario($id_usuario){
        $this ->id_usuario= $id_usuario;
    }
    function setNombre($nombre){
        $this ->nombre = $nombre;
    }
    function setapellido($apellido){
        $this ->apellido = $apellido;
    }
    function setemail($email){
        $this ->email= $email;
    }
    function setpassword($password){
        $this ->password= $password;
    }
    function setimagen($imagen){
        $this ->imagen= $imagen;
    }

    public function conseguirTodos(){
        echo "IMPRIMIENDO TODOS LOS USUARIOS...";
    }


}