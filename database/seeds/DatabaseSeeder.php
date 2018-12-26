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
      //factory(App\User::class, 10)->create();
      //factory(App\PatientModel::class, 10)->create();
      factory(App\TreatmentModel::class, 3)->create();
    }
}
