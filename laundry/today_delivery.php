<?php 
    include('all-head.php');
  

if(isset($_GET['id']))
{ ?>
<div class="popup popup--icon -question js_question-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Sure
</h1>
<p>Are You Sure To Delete This Record?</p>
<p>
<a href="del_order.php?id=<?php echo $_GET['id']; ?>" class="button button--success" data-for="js_success-popup">Yes</a>
<a href="transaction.php" class="button button--error" data-for="js_success-popup">No</a>
</p>
</div>
</div>
<?php } ?>



<!-- Page wrapper  -->
<div class="page-wrapper">
<!-- Bread crumb -->
<div class="row page-titles">
<div class="col-md-5 align-self-center">
<h3 class="text-primary"> View Order</h3> </div>
<div class="col-md-7 align-self-center">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
<li class="breadcrumb-item active">View Order</li>
</ol>
</div>
</div>
<!-- End Bread crumb -->
<!-- Container fluid  -->
<div class="container-fluid">
<!-- Start Page Content -->

<!-- /# row -->
<div class="card">
<div class="card-body">
<?php if(isset($useroles)){  if(in_array("add_order",$useroles)){ ?> 
<a href="add_order.php"><button class="btn btn-primary">Add order</button></a>
<?php } } ?>
<div class="table-responsive m-t-40">
<table id="myTable" class="table table-bordered table-striped">
<thead>
<tr>
<th>ID</th>
<th>Customer Name</th>
<!-- <th>Last Name</th> -->
<th>Service name</th>
<th>Desciption</th>
<th>Price</th>
<th>Delivery Date</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<?php 
$sql ="SELECT * FROM orders WHERE delivery_date = CURRENT_DATE";

$result = pg_query($sql);

while($row = pg_fetch_assoc($result))

{
$sql1 = "SELECT * FROM services where id='".$row['sname']."'";
$result1 = pg_query($sql1);
$row1 = pg_fetch_assoc($result1);

$sql2 = "SELECT * FROM services where id='".$row['price']."'";
$result2 = pg_query($sql2);
$row2 = pg_fetch_assoc($result2);


?>
<tr>
<td><?php echo $row['id']; ?></td>
<td><?php echo $row['fname']; ?></td>
<!-- <td><?php echo $row['lname']; ?></td> -->
<td><?php echo $row1['sname']; ?></td>

<td><?php echo $row['descriptions']; ?></td>
<td><?php echo $row2['price']; ?></td>
<td><?php echo $row['delivery_date']; ?></td>
<?php if ($row['delivery_status']==0) {
?>
<td>pending</td>
<?php } 
else{

?>
<td>completed</td>
<?php }?>
<?php if ($row['delivery_status']==0) {
?>


<?php }?>

</td>



</tr>
<?php } ?>
</tbody>
</table>
</div>
</div>
</div>

<?php include('footer.php');?>

<!--  Author Name: Nikhil Bhalerao - www.nikhilbhalerao.com 
PHP, Laravel and Codeignitor Developer -->

<link rel="stylesheet" href="popup_style.css">
<?php if(!empty($_SESSION['success'])) {  ?>
<div class="popup popup--icon -success js_success-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Success 
</h1>
<p><?php echo $_SESSION['success']; ?></p>
<p>
<button class="button button--success" data-for="js_success-popup">Close</button>
</p>
</div>
</div>
<?php unset($_SESSION["success"]);  
} ?>
<?php if(!empty($_SESSION['error'])) {  ?>
<div class="popup popup--icon -error js_error-popup popup--visible">
<div class="popup__background"></div>
<div class="popup__content">
<h3 class="popup__content__title">
Error 
</h1>
<p><?php echo $_SESSION['error']; ?></p>
<p>
<button class="button button--error" data-for="js_error-popup">Close</button>
</p>
</div>
</div>
<?php unset($_SESSION["error"]);  } ?>
<script>
var addButtonTrigger = function addButtonTrigger(el) {
el.addEventListener('click', function () {
var popupEl = document.querySelector('.' + el.dataset.for);
popupEl.classList.toggle('popup--visible');
});
};

Array.from(document.querySelectorAll('button[data-for]')).
forEach(addButtonTrigger);
</script>