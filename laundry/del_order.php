<?php
include('connect.php');
session_start();

$sql = "DELETE FROM orders WHERE id='".$_GET["id"]."'";
$res = pg_query($sql) ;
 $_SESSION['success']=' Record Successfully Deleted';
?>
<script>
//alert("Delete Successfully");
window.location = "transaction.php";
</script>

