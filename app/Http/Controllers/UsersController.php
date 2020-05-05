<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
use \App\Profile;

class UsersController extends Controller
{
    public function index()
    {
    	return view('users.index', ['users' => User::all()]);
    }
    public function makeAdmin(User $user)
    {
    	$user->role = 'admin';
    	$user->save();

    	return redirect(route('users.index'))->with('success', $user->name . ' now is an admin.');
    }
    public function edit(User $user)
    {
    	$profile = $user->profile;
    	return view('users.profile', ['user' => $user, 'profile' => $profile]);
    }
    public function update(User $user, Request $request)
    {
    	$profile = $user->profile;
    	$data = $request->all();

    	if ($request->hasFile('picture')){
    		$picture = $request->picture->store('profilePictures', 'public');
    		$data['picture'] = $picture;
    	}

    	$profile->update($data);
    	return redirect(route('home'));
    }
}
