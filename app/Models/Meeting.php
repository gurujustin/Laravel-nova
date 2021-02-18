<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{
    use HasFactory;

    protected $casts = [
        'datetime' => 'datetime',
    ];

    public function decisions()
    {
        return $this->hasMany(Decision::class);
    }
}
