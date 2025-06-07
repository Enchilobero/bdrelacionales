<?php
    
    $host = '191.168.1.21'; //localhost
    $host = 'sakila_user'; //root
    $pass = 'sakila'; //''
    $dbname = 'sakila';

    //crear conexion
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificar conexion
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de Conexion: ' . $conn->connect_error]);
        exit;
    }

?>
