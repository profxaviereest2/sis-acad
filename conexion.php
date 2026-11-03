<?php
// Archivo de conexion a la base de datos MySQL

class conexion {
    // Datos de configuracion para conectar con MySQL en XAMPP
    private $host = 'localhost';
    private $user = 'root';
    private $pass = '';
    private $db = 'db_escuela';
    public $conn;

    // Metodo para abrir y devolver la conexion
    public function conectar(){
        $this->conn = new mysqli($this->host, $this->user, $this->pass, $this->db);
        if ($this->conn->connect_error) {
            die('error de conexion: ' . $this->conn->connect_error);
        }
        return $this->conn;
    }

    // Metodo estatico para obtener la conexion rapidamente sin instanciar afuera
    public static function obtenerconexion() {
        $conexiondb = new conexion();
        return $conexiondb->conectar();
    }
}
?>