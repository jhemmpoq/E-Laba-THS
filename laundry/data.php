<?php
header('Content-Type: application/json');
$hostname = "localhost";
$dbname = "e-laba";
$username = "postgres";
$port = "5432";
$pass = "0131";

// Create connection
$db_conn = pg_connect("host = $hostname dbname = $dbname user = $username port = $port password = $pass");

$sqlQuery = "SELECT student_id,student_name,marks FROM tbl_marks ORDER BY student_id";
$query = "SELECT id,  FROM orders ORDER BY id"

$result = pg_query($db_conn,$query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

pg_close($db_conn);

echo json_encode($data);
?>