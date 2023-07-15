<?php

include('database.php');


$sql = "SELECT * FROM student_list";
$students = $conn->query($sql);
$row = $students->fetch_object();



$i=1;



?>
<?php session_start(); ?>
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
        <br><br>
    <h1 style="text-align:center">Student Management System</h1>
    <br><br>
    <?php if(isset($_SESSION['message'])) : ?>
         <h5 class="alert alert-success"><?= $_SESSION['message']?></h5>
    <?php
        unset($_SESSION['message']);
        endif; ?>
    <span>
    <a href="add.php" class="btn btn-success" >Add New Student <i class="fa-solid fa-plus"></i>
</a>
   
    </span>
    <br><br>
    <div class="row">

   
    <table>
            <thead style="text-align:center">
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>NO</th>
                        <th>NAME</th>
                        <th>EMAIL</th>
						<th>PHONE</th>
                        <th>COURSE</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody style="text-align:center">
                          <?php do {   ?>
                               <tr>
                                <td></td>
                                <td><?php echo $i ?></td>
                                <td><?php echo $row->fullname; ?></td>
                                <td><?php echo $row->email; ?></td>
                                <td><?php echo $row->phone; ?></td>
                                <td><?php echo $row->course; ?></td>
                                <td>
                                    <a href="edit.php?id=<?= $row->id ?>"  class="btn btn-warning"><i class="fa-solid fa-user-pen"></i></a>
                                  
                                </td>
                                <td>
                                <form action="code.php" method="post">
                                    <button class="btn btn-danger" type="submit" name="delete_student" value="<?php echo $row->id ?>"><i class="fa-solid fa-trash"></i></button>
                                    </form>
                                </td>
                                
                                <?php  $i++; ?>
                             </tr>
                         <?php } while($row = $students->fetch_object())   ?>

                         
                  </tbody>
        </table>
     </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>