<x-app-layout>
 
</x-app-layout>

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
    <h1 style="text-align:center">ADD DATA</h1>
    <br><br>
    <span>
    <a href="index.php" class="btn btn-danger" >Back
</a>
    </span>

  
    <div class="card-body">
   
       <form action="/add" method="POST">
        @csrf
           <div class="mb-3">
               <label for="">Name</label>
               <input type="text" name="fullname" id="" class="form-control" value{{ old('fullname') }}>
               {{-- @error('firstname')
                   <p class="text-danger">
                      
                   </p>
               @enderror --}}
           </div>

           <div class="mb-3">
               <label for="">Email</label>
               <input type="text" name="email" id="" class="form-control" value{{ old('email') }}>
           </div>

           <div class="mb-3">
               <label for="">Phone</label>
               <input type="text" name="phone" id="" class="form-control" value{{ old('phone') }}>
           </div>
           
           <div class="mb-3">
               <label for="">Course</label>
               <input type="text" name="course" id="" class="form-control" value{{ old('course') }}>
           </div>

           <div class="mb-3" style="margin:auto">
               <button type="submit" name="save_student" class="btn btn-primary">Save</button>
           </div>
       </form>

       </div>
    </div>
  

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>