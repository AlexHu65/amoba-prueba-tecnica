<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DisabledDay extends Model
{
    public function calendar()
    {
        return $this->hasOne('App\Calendar', 'id' , 'calendar_id');
    }
}
