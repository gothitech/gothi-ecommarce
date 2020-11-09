<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ProductSize extends Model

{
    protected $fillable = ['name'];
    public function size(){
        return $this->belongsTo(Color::class, 'size_id', 'id');
    }
}
