<?php
session_start();
include('database.php');

if(isset($_POST['delete_student'])){

    $id = $_POST['delete_student'];
    
    try{
         
        $sql = "DELETE FROM `student_list` WHERE id= $id";
        $student = $conn->query($sql);
       

        if($student){
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
       $student_result = $conn->query($sql);

      if($student_result){
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
    $student_execute = $conn->query($sql);
   
    if($student_execute){
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