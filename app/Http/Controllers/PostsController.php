<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Post;
use App\Category;
use App\Tag;
use App\Http\Requests\PostRequest;
use App\Http\Requests\UpdatePostRequest;

class PostsController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('checkCategory')->only('create');  // important
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('posts.index')->with('posts', Post::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create', ['categories' => Category::all(), 'tags' => Tag::all()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request)
    {
        $post = Post::create([
            'title' => $request->title,
            'description' => $request->description,
            'content' => $request->content,
            'image' => $request->image->store('images', 'public'),  // important
            'user_id'  => auth()->id(),
            'category_id' => $request->category_id,
        ]);

        if ($request->has('tag_id')) {
            $post->tags()->attach($request->tag_id);
        }

        return redirect(route('posts.index'))->with('success', 'Post has been created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('posts.show')->with('post', $post)->with('categories', Category::all());
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('posts.create', ['post' => $post, 'categories' => Category::all(), 'tags' => Tag::all()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePostRequest $request, Post $post)
    {
        $data = $request->only(['title', 'description', 'content']);

        if ($request->hasFile('image')) 
        {
            $image = $request->image->store('images', 'public');
            Storage::disk('public')->delete($post->image);
            $data['image'] = $image;
        }
        if ($request->has('tag_id'))
        {
            $post->tags()->sync($request->tag_id);
        }

        $post->update($data);

        return redirect(route('posts.index'))->with('success', 'Post has been updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $post = Post::withTrashed()->where('id', $id)->first();

        if ($post->trashed())
        {
            Storage::disk('public')->delete($post->image);  // important
            $post->forceDelete();                 // important
            return redirect(route('trashed.index'))->with('success', 'Post has been deleted successfully.');
        }
        else
        {
            $post->delete();
            return redirect(route('posts.index'))->with('success', 'Post has been deleted successfully.');
        }
    }
    public function trashed()
    {
        $trashed = Post::onlyTrashed()->get();

        return view('posts.index')->withPosts($trashed);  // important
    }
    public function restore($id)
    {
        if (Post::onlyTrashed()->where('id', $id)->restore()) {
            
            return redirect(route('trashed.index'))->with('success', 'Post has been restored successfully.');
        }else{

            abort(404);
        }
    }
}
