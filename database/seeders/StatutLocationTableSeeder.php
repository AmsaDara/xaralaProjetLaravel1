<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatutLocationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table("statut_locations")->insert([
            ["nom" => "En Attente"],
            ["nom" => "En Cours"],
            ["nom" => "Terminée"],
        ]);
    }
}
