<?php
include('connect.php');
session_start();

$sql = "DELETE FROM admins WHERE id='".$_GET["id"]."'";
$res = pg_query($sql) ;
 $_SESSION['success']=' Record Successfully Deleted';
?>
<script>
//alert("Delete Successfully");
window.location = "view_user.php";
</script>

