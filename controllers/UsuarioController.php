<?php
// Aca mostramos todas las acciones que puede hacer el controlador 
class UsuarioController{
    public function mostrarTodos(){
        require_once 'models/UsuarioModel.php';
        $usuario = new Usuario();
        $todos_los_usuarios = $usuario ->conseguirTodos();
        require_once 'views/usuario/mostrar-todos.php';
    }
    public function crear (){
       require_once 'views/usuario/crear.php';

        
    }
    
    


}