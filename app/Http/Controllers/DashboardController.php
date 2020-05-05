<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\User;
use App\Category;

class DashboardController extends Controller
{
    public function index()
    {
    	return view('dashboard.index', [
    		'users_count' => User::all()->count(),
    		'posts_count' => Post::all()->count(),
    		'categories_count' => Category::all()->count(), 
    	]);
    }
}
