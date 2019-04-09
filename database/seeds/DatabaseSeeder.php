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
      //factory(App\TreatmentModel::class, 3)->create();
      //$this->dump_all_from_sql();
      $this->dump_from_sql("patients");
    }



    public function dump_all_from_sql()
    {
      foreach(["users","patients","treatments","social_accounts"] as $row)
      {
        dump_from_sql($row);
      }
    }

    public function dump_from_sql($table)
    {
      Eloquent::unguard();
      $version = "2019-04-09";
      $db_name = \Config::get('database.connections.mysql.database');
      $user   = \Config::get('database.connections.mysql.username');
      $pass   = \Config::get('database.connections.mysql.password');

      $row = $table;
      $path = "sql/data/{$version}/{$db_name}_table_{$row}.sql";

      // running command line import in php code
      exec("mysql -u " . $user . " -p" . $pass . " " . $db_name . " < ".$path);

      $this->command->info("{$row} table seeded!");
    }


}
