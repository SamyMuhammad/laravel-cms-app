<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);

        factory(App\Profile::class, 9)->create();

        factory(App\Category::class, 10)->create();

        factory(App\Tag::class, 5)->create();

        $posts = factory(App\Post::class, 10)
        	->create()
        	->each(function ($post){
        		$post->tags()->save(factory(App\Tag::class)->make());
        	});
    }
}