<?php
include 'connect.php';
session_start();

$sql =" UPDATE orders SET delivery_status=1 WHERE id='".$_GET['id']."'";
$res = pg_query($sql) ;
 $_SESSION['success']=' order Successfully completed';
?>
<script>
//alert("Delete Successfully");
window.location = "view_order.php";
</script>

