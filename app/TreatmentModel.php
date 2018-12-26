<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TreatmentModel extends Model
{
  protected $table = 'treatments';
  protected $primaryKey = 'treatment_id';

  public static function all_join(){
    //return
  }
}
