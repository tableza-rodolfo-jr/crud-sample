<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Models\Students;

class HomeController extends Controller
{
    public function redirect()
    {
         $usertype = AUTH::user()->usertype;

         if($usertype=='1'){

            $data = Students::all();
           
            return view('admin.home', ['students' => $data]);
         }else {
            return view('dashboard');
         }
    }


    public function add_student(){
      return view('admin.add');
    }

    public function store(Request $request){
      $validated = $request->validate([
         "fullname" => ['required', 'min:4'],
         "email"  => ['required', 'email'],
         "phone" => ['required', 'min:4'],
         "course" => ['required', 'min:4']

      ]);

     Students::create($validated);

       return redirect('/redirect')->with('message', 'New Student Added Successfully');
    }

    public function destroy($id){
       $student=Students::find($id);

       $student->delete();

       return redirect('/redirect')->with('message', 'Deleted Successfully');
    }


    public function edit_student($id){
     $data = Students::findOrFail($id);
      
      return view('admin.edit', ['student' => $data]);
    }
   
    public function update(Request $request, Students $student){

      $validated = $request->validate([
         "fullname" => ['required', 'min:4'],
         "email"  => ['required', 'email'],
         "phone" => ['required', 'min:4'],
         "course" => ['required', 'min:4']

      ]);
        $student->update($validated);

        return redirect('/redirect')->with('message', 'Deleted Successfully');
    }
 
   
  
}
