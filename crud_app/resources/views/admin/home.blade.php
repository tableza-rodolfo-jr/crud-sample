<x-app-layout>
 
</x-app-layout>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <title>Student</title>
</head>
<body>
   
    <div class="container">
        <br><br>
    <h1 style="text-align:center">Student Management System</h1>
    <br><br>
    <div class="row">
        <span>
            <a href="{{ url('add') }}" class="btn btn-success" >Add New Student <i class="fa-solid fa-plus"></i>
        </a>
           
            </span>
   <br><br>
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
                    @foreach ($students as $student)
                        
                   
                       <tr>
                        <td></td>
                        <td></td>
                        <td>{{ $student->fullname }}</td>
                        <td>{{ $student->email }}</td>
                        <td>{{ $student->phone }}</td>
                        <td>{{ $student->course }}</td>

                        <td>   
                           <a href="{{ url('student', $student->id) }}" class="btn btn-success"><i class="fa-solid fa-user-pen"></i></a>

                           <a onclick="return confirm('Are You Sure You Want to delete this?')" href="{{ url('delete', $student->id) }}" class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>
                        </td>
                       </tr>
                       @endforeach
                         
                  </tbody>
        </table>
     </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>