<?php
$connection = mysqli_connect('db01', 'root', '');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'UsersDB');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}

