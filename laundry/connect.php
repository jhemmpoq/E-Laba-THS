<?php
$hostname = "localhost";
$dbname = "e-laba";
$username = "postgres";
$port = "5432";
$pass = "0131";

// Create connection
$db_conn = pg_connect("host = $hostname dbname = $dbname user = $username port = $port password = $pass");
?>