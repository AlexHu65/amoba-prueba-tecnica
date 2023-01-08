<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    public function routeData()
    {
        return $this->hasMany('App\RouteData');
    }

    public function reserved()
    {
        return $this->hasMany('App\Reservation');
    }
}
