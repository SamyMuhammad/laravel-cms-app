<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
        'title' 		=> $faker->sentence(3),
        'description' 	=> $faker->text(150),
        'content' 		=> $faker->text(500),
        'image' 		=> 'images/' . $faker->image(public_path('storage/images'), 640, 480, '', false),
        'user_id'		=> App\User::all()->pluck('id')->random(),
        'category_id'	=> App\Category::all()->pluck('id')->random(),
    ];
});