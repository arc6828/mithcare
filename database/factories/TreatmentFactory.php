<?php

use Faker\Generator as Faker;

$factory->define(App\TreatmentModel::class, function (Faker $faker) {
    return [
      'patient_id' => 1,
      'admin_id' => 1,
      'problem' => $faker->text()  ,
      'diagnose' => $faker->text()  ,
      'solution' => $faker->text()  ,
      'prescription' => $faker->text()  ,
    ];
});
