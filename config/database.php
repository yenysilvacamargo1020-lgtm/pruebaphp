<?php
class database{
    public static function conectar(){
        $conexion = new mysqli("localhost","root","","tienda14");
        $conexion->query("SET NAMES 'utf-8'");
        return $conexion;
    }
}