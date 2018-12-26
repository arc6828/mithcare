<?php

use Faker\Generator as Faker;

$factory->define(App\PatientModel::class, function (Faker $faker) {
    return [
      'patient_name' => $faker->name,
      'gender' => $faker->unique()->safeEmail,
      'blood_type' => $faker->randomElement($array = array ('A','B','O','AB')) ,
      'citizen_id' => $faker->numerify('#############') ,
      'date_of_birth' => $faker->date($format = 'Y-m-d', $max = 'now'),
      'address' => $string = str_replace(array("\n", "\r"), '', $faker->address),
      'phone' => $faker->tollFreePhoneNumber,
      'medical_condition' => $faker->text($maxNbChars = 191)  ,
      'drug_allergy' => $faker->text($maxNbChars = 191)  ,
      'image' => "http://lorempixel.com/300/300/people/",
    ];
});
