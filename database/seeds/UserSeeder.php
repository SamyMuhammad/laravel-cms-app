<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
/*use App\User;
use App\Profile;
use App\Http\Controllers\Auth\RegisterController;*/

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            [
                'name' => 'Samy',
                'email' => 'samy@cms.com',
                'password' => Hash::make(12345678),
                'role' => 'admin',
            ],
            [
                'name' => 'Ahmed',
                'email' => 'ahmed@cms.com',
                'password' => Hash::make(12345678),
                'role' => 'writer',
            ]
        ]);
        factory(App\User::class, 7)->create();
    }
}
