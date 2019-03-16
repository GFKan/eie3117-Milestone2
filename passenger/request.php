<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require_once "../config.php";
session_start();

 
// Attempt insert query execution
try{
    // Create prepared statement
    // $sql = "INSERT INTO persons (first_name, last_name, email) VALUES (:first_name, :last_name, :email)";
    $sql = "INSERT INTO `history`( `passengerName`, `startTime`) VALUES ((:username),(:date_time))";
    $stmt = $pdo->prepare($sql);
    
date_default_timezone_set("Asia/Hong_Kong");
    $current_date = date("Y-m-d H:i:s");

    // Bind parameters to statement

  
    $stmt->bindParam(':username', $_SESSION['username']);
    $stmt->bindParam(':date_time', $current_date );
    
    // Execute the prepared statement
    $stmt->execute();
    $_SESSION['requested'] =  true;
    header("Location: passenger_home.php");

   exit;
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}