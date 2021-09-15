<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
     <?php
             include('connect.php');
            //  $sql_head_title = "SELECT * FROM manage_website"; 
            //  $result_head_title = pg_query($sql_head_title);
            //  $row_head_title = pg_fetch_array($result_head_title);
             ?>
    <title>
      <?php //echo $row_head_title['title'];?>
      E-Laba - Laundry Management System
  </title>

    <link href="laundry/css/lib/chartist/chartist.min.css" rel="stylesheet">
  <link href="laundry/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="laundry/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="laundry/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="laundry/css/helper.css" rel="stylesheet">
    <link href="laundry/ss/style.css" rel="stylesheet">
 <link rel="stylesheet" href="laundry/css/lib/html5-editor/bootstrap-wysihtml5.css" />
 <link href="laundry/css/lib/calendar2/semantic.ui.min.css" rel="stylesheet">
    <link href="laundry/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
     <link href="laundry/css/lib/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
      <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>