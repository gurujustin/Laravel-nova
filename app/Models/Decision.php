<?php

namespace App\Models;

use App\Nova\Representative;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class decision extends Model
{
    use HasFactory;

    public function meeting()
    {
        return $this->belongsTo(Meeting::class);
    }
}
