<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Controller;

class Students extends Model
{
    // protected $fillable = ['fullname', 'email', 'phone', 'course'];

    protected $guarded = [];

    use HasFactory;
}
