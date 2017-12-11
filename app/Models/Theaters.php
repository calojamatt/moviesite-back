<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Theaters extends Model
{
    protected $table = "theaters";

    /**
     * Get the movies for the theaters.
     */
    public function movies()
    {
        return $this->hasMany('App\Models\Movies');
    }
}
