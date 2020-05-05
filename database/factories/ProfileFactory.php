<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Profile;
use App\User;
use Faker\Generator as Faker;

$factory->define(Profile::class, function (Faker $faker) {
    return [
        'user_id' 	=> $faker->unique()->randomDigitNotNull,
        'about'		=> $faker->sentence(10),
        'picture'	=> User::DEFAULT_PICTURE,
    ];
});
