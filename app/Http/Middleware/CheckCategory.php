<?php

namespace App\Http\Middleware;

use Closure;
use App\Category;

class CheckCategory
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $count = Category::all()->count();
        if ($count === 0) {
            return redirect(route('categories.create'))->with('error', 'First you need to add at least one category.');
        }
        return $next($request);
    }
}
