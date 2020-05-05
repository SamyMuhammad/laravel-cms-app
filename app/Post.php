<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
	use SoftDeletes;
    
    protected $fillable = [
    	'title', 'description', 'content', 'image', 'category_id'
    ];

    public function category()
    {
    	return $this->belongsTo('App\Category');
    }
    
    public function tags()
    {
    	return $this->belongsToMany(Tag::class)->withTimestamps();
    }

    public function hasTag($tagId)
    {
        return $this->tags->pluck('id')->contains($tagId);
    }
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    // fun belongsToCategory
}
