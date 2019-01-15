<?php

    $server="localhost";
    $username= "general_user";
    $password= "abc123";
    $database = "product_sales";

    $connection = new mysqli($servername,$username,$password,$database);

    /* Check the connection is created properly or not */

    if($connection->connect_error)
        echo "Connection error:" . $connection->connect_error;
    else 
	echo "Connection successful!";


?>
