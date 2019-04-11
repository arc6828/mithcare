<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class treatment extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'treatments';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['patient_id', 'doctor_id', 'case_description', 'diagnose', 'prescription', 'date', 'remark'];

    
}
