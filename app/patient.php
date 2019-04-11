<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class patient extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'patients';

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
    protected $fillable = ['name', 'gender', 'blood_type', 'citizen_id', 'dob', 'address', 'phone', 'medical_condition', 'drug_allergy', 'image'];

    
}
