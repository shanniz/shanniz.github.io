<?php

    $server="localhost";
    $username= "root";
    $password= "";
    $database = "product_sales";

    $connection = new mysqli($servername,$username,$password,$database);

    /* Check the connection is created properly or not */

    if($connection->connect_error)
        echo "Connection error:" . $connection->connect_error;
    else 
	echo "Connection successful!";


?>
