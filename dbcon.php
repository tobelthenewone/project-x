
<?php
// create db connection
$conn=new mysqli("localhost","root","","examin");
if($conn->connect_error) {
    die("connection failed");
   }

?>