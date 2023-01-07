<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function category()
    {
        return $this->belongsTo(Categories::class);
        // return $this->belongsTo(Categories::class, 'category_id');
    }

    
    // public function cat_name() {
    //     return $this->belongsTo(Categories::class);
    // }
}
