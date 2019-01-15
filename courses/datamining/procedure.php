
<html>
  <head>
	<title> PHP MySQL </title>
  </head>

  <body>
    <?php
      Include ("dbconnection.php");
    ?>


    <div>
      <form action="procedure.php" method="post">
        <br>
        <input type="submit" name="getData" value="Fetch Data" />

	<br>
        <input type="submit" name="getSum" value="Get total sales" />

      </form>
    </div>

  <?php

  function getData($connection){
    $result = $connection->query("CALL getTotalSales()");
    echo "<table>";
    echo "<tr> <th>Store_Name</th> <th>Sales</th> <th>Txn_Date</th>  </tr>";
    if ($result->num_rows > 0) {
        // Read the records
        while($row = $result->fetch_assoc()) {	    
            echo "<tr><td>" . $row["Store_Name"]. "</td><td>". $row["Sales"].
            "</td><td>". $row["Txn_Date"] ."</td>";
        }
    }
    echo "</table>";
    
  }

    if(isset($_POST['getData']) ){
        getData($connection);
    }


    $connect->close();


  ?>

  </body>

</html>
