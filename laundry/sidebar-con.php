<?php
 $sql = "select * from admin where id = '".$_SESSION["id"]."'";
 $result=$conn->query($sql);
 $row1=mysqli_fetch_array($result);

     $q = "select * from tbl_permission_role where role_id='".$row1['group_id']."'";
     $ress=$conn->query($q);
     //$row=mysqli_fetch_all($ress);
      $name = array();
     while($row=mysqli_fetch_array($ress)){
   $sql = "select * from tbl_permission where id = '".$row['permission_id']."'";
 $result=$conn->query($sql);
 $row1=mysqli_fetch_array($result);
      array_push($name,$row1[1]);
      }
      $_SESSION['name']=$name;
      $useroles=$_SESSION['name'];
?>