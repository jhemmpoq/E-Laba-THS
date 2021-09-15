<?php include('../head.php');
      include('../header.php');
      include('../sidebar.php');
      include('../connect.php');

      if(isset($_POST["btn_update"]))
{
  extract($_POST);

  $target_dir = "uploadImage/Profile/";
  $image1 = basename($_FILES["image"]["name"]);
  if($_FILES["image"]["tmp_name"]!=''){
    $image = $target_dir . basename($_FILES["image"]["name"]);
   if (move_uploaded_file($_FILES["image"]["tmp_name"], $image)) {
    
       @unlink("uploadImage/Profile/".$_POST['old_image']);
    
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
  
  }
  else {
     $image1 =$_POST['old_image'];
  }
  
   $q1="UPDATE admins SET fname=$fname, lname=$lname, email=$email, contact=$contact, dob=$dob, gender=$gender, image=$image1 WHERE id = '".$_SESSION["id"]."'";
  //$query1= pg_query($q1);

    if (pg_query($q1) === TRUE) {
   
      $_SESSION['success']='Record Successfully Updated';
      ?>
      <script type="text/javascript">
        window.location = "profile.php";
      </script>
      <?php

} else {
   
      $_SESSION['error']='Something Went Wrong';
}


  ?>
  <script>
  //window.location = "sms_config.php";
  </script>
  <?php
}

?>
<?php
$que="SELECT * FROM  admins where id = '".$_SESSION["id"]."'";
$query=pg_query($que);
while($row=pg_fetch_array($query))
{
  //print_r($row);
  extract($row);
  $fname = $row['fname'];
  $lname = $row['lname'];
  $email = $row['email'];
  $contact = $row['contact'];
  $dob1 = $row['dob'];
  $gender = $row['gender'];
}

?>