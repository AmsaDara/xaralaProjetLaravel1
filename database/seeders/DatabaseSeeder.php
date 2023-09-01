<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\Client;
use App\Models\User;
use Database\Factories\TypeArticleFactory;
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
        $this->call(TypeArticleTableSeeder::class);
        
        Article::factory(10)->create();
        Client::factory(10)->create();
        User::factory(10)->create();
        
        $this->call(DureeLocationTableSeeder::class);
        $this->call(PermissionTableSeeder::class);
        $this->call(RoleTableSeeder::class);
        $this->call(StatutLocationTableSeeder::class);
        
        User::find(1)->roles()->attach(1);
        User::find(2)->roles()->attach(2);
        User::find(3)->roles()->attach(4);
        User::find(4)->roles()->attach(4);
    }
}
