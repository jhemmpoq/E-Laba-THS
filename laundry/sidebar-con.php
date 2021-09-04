<?php
 $sql = "SELECT * FROM admins WHERE id = '".$_SESSION["id"]."'";
 $result=pg_query($sql);
 $row1=pg_fetch_array($result);

     $q = "SELECT * FROM tbl_permission_role WHERE role_id='".$row1['group_id']."'";
     $ress=pg_query($q);
     //$row=mysqli_fetch_all($ress);
      $name = array();
     while($row=pg_fetch_array($ress)){
   $sql = "select * from tbl_permission where id = '".$row['permission_id']."'";
 $result=pg_query($sql);
 $row1=pg_fetch_array($result);
      array_push($name,$row1[1]);
      }
      $_SESSION['name']=$name;
      $useroles=$_SESSION['name'];
?>