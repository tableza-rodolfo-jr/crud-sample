<?php
session_start();
include('database.php');

if(isset($_POST['delete_student'])){

    $id = $_POST['delete_student'];
    
    try{
         
        $sql = "DELETE FROM `student_list` WHERE id= $id";
        $stmt = $conn->prepare($sql);
        $query_result = $stmt->execute();

        if($query_result){
          $_SESSION['message']= "Deleting Data Success";
          header('Location: index.php');
          exit(0);
        }else {
        $_SESSION['message']= "failed";
          header('Location: index.php');
          exit(0);
        }

    }catch(PDOException $e){
       echo $e->getMessage();
    }
}



if(isset($_POST['update_student'])){

     $id = $_POST['student_id'];
    $fname = $_POST['fullname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $course = $_POST['course'];
    
    try{
       $sql = "UPDATE `student_list` SET `fullname`='fname',`email`='$email',`phone`='$phone',`course`='$course' WHERE id = $id";
        $stmt = $conn->prepare($sql);
       $query_result = $stmt->execute();

      if($query_result){
        $_SESSION['message']= "Updating Data Success";
        header('Location: index.php');
        exit(0);
      }else {
      $_SESSION['message']= "failed";
        header('Location: index.php');
        exit(0);
      }

    }catch(PDOException $e){
      echo $e->getMessage();
    }
}


if(isset($_POST['save_student'])){

    $fname = $_POST['fullname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $course = $_POST['course'];
      
    $sql = "INSERT INTO `student_list`(`fullname`, `email`, `phone`, `course`)VALUES('$fname ','$email','$phone','$course')";
    $query_run = $conn->prepare($sql);
    $query_execute = $query_run->execute();
   
    if($query_execute){
        $_SESSION['message']= "Adding Data Success";
        header('Location: index.php');
        exit(0);
    }else {
        $_SESSION['message']= "failed";
        header('Location: index.php');
        exit(0);
    }
}



?>