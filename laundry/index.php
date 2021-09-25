<?php 
    include('head.php');
    include('header.php');
    include('sidebar.php');

?>
<?php //echo  $_SESSION["email"];
 date_default_timezone_set('Asia/Kolkata');
 $current_date = date('Y-m-d');

 $sql_currency = "SELECT * FROM manage_website"; 
             $result_currency = pg_query($sql_currency);
             $row_currency = pg_fetch_array($result_currency);
?>    
        <!-- Page wrapper  -->
        <div class="page-wrapper">
             <?php include 'social_link.php'; ?> 
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Owner Dashboard</h3> 

                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <marquee scrollamount=4><b>Alert : Don't Sale or Publish this script with your name. However you can use it for Academic Purpose !</b></marquee>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
        

     



                      <div class="row">
                    <div class="col-md-4">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                  <?php 

                        $sql= "SELECT * FROM orders WHERE todays_date= '".date('Y-m-d')."'";
                    $res=pg_query($sql);
              $num_rows = pg_num_rows($res);
            ?>

                                  
                                    <h2 class="color-white">  
                                     <?php

                                      echo $num_rows 

                                             ?>


                                    </h2>
                                    <p class="m-b-0">New orders</p>
                                </div>
                            </div>
                        </div>
                    </div>





                    <div class="col-md-4">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-comment f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    
                                    <?php 
                        $sql= "SELECT * FROM orders WHERE delivery_status ='0'";
                    $res=pg_query($sql);
              $num_rows = pg_num_rows($res);
            ?>

                                  
                                    <h2 class="color-white">  
                                     <?php

                                      echo $num_rows 

                                             ?>

                              </h2>
                                    <p class="m-b-0">Inprogress</p>
                                </div>
                            </div>
                        </div>
                    </div>






                    <div class="col-md-4">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-vector f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <?php 
                        $sql= "SELECT * FROM orders WHERE delivery_status='1' ";
                    $res=pg_query($sql);
              $num_rows = pg_num_rows($res);
            ?>

                                  
                                    <h2 class="color-white">  
                                     <?php

                                      echo $num_rows 

                                             ?>

                                                

                                    </h2>
                                    <p class="m-b-0">Completed</p>
                                </div>
                            </div>
                        </div>
                    </div>


            </div>

        </div>
        <div class="card">
<div class="card-body">
<div id="chart-container">
        <canvas id="graphCanvas"></canvas>
    </div>
<!-- <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Orders Status</h3> </div>
<div class="table-responsive m-t-40"> -->
    <!-- <table id="myTable" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Customer Name</th>
                <th>Service Name</th>
                <th>Desciption</th>
                <th>Price</th>
                <th>Delivery Date</th>
                <th>Pickup Date</th>
                <th>Status</th>
            </tr>
        </thead>
    <tbody> -->
<!-- <?php 
// $sql = "SELECT * FROM orders";
// $result = pg_query($sql);

// while($row = pg_fetch_assoc($result))

// {
// $sql1 = "SELECT * FROM services where id='".$row['sname']."'" ;
// $result1 = pg_query($sql1);
// $row1 = pg_fetch_assoc($result1);

// $sql2 = "SELECT * FROM customer WHERE id='".$row['fname']."'";
// $result2 = pg_query($sql2);
//$row2 = pg_fetch_assoc($result2);
?>
<tr>
<td><?php //echo $row['id']; ?></td>
<td><?php //echo $row2['fname']; ?></td>
<?php ///echo $row['lname']; ?>
<td><?php //cho isset($row1['sname']) ? $row1['sname'] : "N/A"; ?></td>

<td><?php //echo $row['discription']; ?></td>
<td><?php //echo $row['prizes']; ?></td>
<td><?php //echo $row['delivery_date']; ?></td>
<td><?php //echo $row['todays_date']; ?></td>
<?php //if ($row['delivery_status']==0) {
?>
<td>pending</td>
<?php //} 
//else{

?>
<td>completed</td>
<?php //}?>
<td>
<?php //if ($row['delivery_status']==0) {
?>

<?php //}?> -->





<!-- <a href="assign_role.php?id=<?=$row['id'];?>"><button type="button" class="btn btn-xs btn-danger" ><i class="fa fa-pay"></i></button></a> -->
</td>
</tr>
<?php //} ?>
</tbody>
</table>
</div>
</div>
</div>

            <!-- End Container fluid  -->
            <?php include('footer.php');?>

<!--  Author Name: Nikhil Bhalerao - www.nikhilbhalerao.com 
PHP, Laravel and Codeignitor Developer -->

<!--  Author Name: Nikhil Bhalerao - www.nikhilbhalerao.com 
PHP, Laravel and Codeignitor Developer -->

<script>
        $(document).ready(function () {
            showGraph();
        });


        function showGraph()
        {
            {
                $.post("data.php",
                function (data)
                {
                    console.log(data);
                        var name = [];
                        var marks = [];

                    for (var i in data) {
                        name.push(data[i].name);
                        marks.push(data[i].marks);
                    }

                    var chartdata = {
                        labels: name,
                        datasets: [
                            {
                                // label: 'Student Marks',
                                label: 'Orders',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                //data: marks
                                data: orders
                            }
                        ]
                    };

                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata
                    });
                });
            }
        }
        </script>