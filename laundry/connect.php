<?php
/* Local Database*/

// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname = "e_laundry";




// // Create connection
// $conn = mysqli_connect($servername, $username, $password, $dbname);
// // Check connection
// if (!$conn) {
//     die("Connection failed: " . mysqli_connect_error());
// }



?> 

<?php
$hostname = "localhost";
$dbname = "e-laba";
$username = "postgres";
$port = "5432";
$pass = "0131";

// Create connection
$db_conn = pg_connect("host = $hostname dbname = $dbname user = $username port = $port password = $pass");
?>