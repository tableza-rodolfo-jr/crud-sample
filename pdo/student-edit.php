<?php
include('database.php');


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Student</title>
</head>
<body>
    <div class="container">
    <div style="margin: auto;" class="col-md-4 mt-4"> 
        <br><br>
    <h1 style="text-align:center">EDIT STUDENT DATA</h1>
    <br><br>
    <span>
    <a href="index.php" class="btn btn-danger" >Back
</a>
    </span>

  
    <div class="card-body">
         <?php
                  if(isset($_GET['id'])){
                    $student_id = $_GET['id'];

                    $sql = "SELECT * FROM student_list WHERE id = $student_id LIMIT 1";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();

                   $result = $stmt->fetch(PDO::FETCH_OBJ);
           
                  }

         ?>
       <form action="code.php" method="POST">

         <input type="hidden" name="student_id" value="<?php echo $result->id ?>">
           <div class="mb-3">
               <label for="">Name</label>
               <input type="text" name="fullname" id="" class="form-control" value="<?php echo $result->fullname  ?>">
           </div>

           <div class="mb-3">
               <label for="">Email</label>
               <input type="text" name="email" id="" class="form-control" value="<?php echo $result->email  ?>">
           </div>

           <div class="mb-3">
               <label for="">Phone</label>
               <input type="text" name="phone" id="" class="form-control" value="<?php echo $result->phone  ?>">
           </div>
           
           <div class="mb-3">
               <label for="">Course</label>
               <input type="text" name="course" id="" class="form-control" value="<?php echo $result->course ?>">
           </div>

           <div class="mb-3" style="margin:auto">
               <button type="submit" name="update_student" class="btn btn-primary">UPDATE</button>
           </div>
       </form>

       </div>
    </div>
  

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>