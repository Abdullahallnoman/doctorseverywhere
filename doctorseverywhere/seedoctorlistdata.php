<link rel="stylesheet" type="text/css" href="index.css">
<?php
include_once 'conn.php';
if(isset($post['upload'])){
}
$dname = mysqli_real_escape_string($conn,$_POST['dname']);
$dsex = mysqli_real_escape_string($conn,$_POST['dsex']); 
$dspecialist = mysqli_real_escape_string($conn,$_POST['dspecialist']);
$dphone = mysqli_real_escape_string($conn,$_POST['dphone']);
$daddress = mysqli_real_escape_string($conn,$_POST['daddress']);



$sql = "select dname,dsex,dspecialist,dphone,daddress
from doctor where dphone='$dphone';";
mysqli_query($conn,$sql);       

header("Location: seedoctorlist.php?update=success");
?>