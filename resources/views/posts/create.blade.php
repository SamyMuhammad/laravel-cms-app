@extends('layouts.app')

@section('stylesheets')
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.1/trix.css">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
@endsection

@section('content')
	<div class="card card-default">
		<div class="card-header">{{ isset($post) ? 'Update post' : 'Add a new Post' }}</div>
		<div class="card-body">
			<form  method ="POST" action="{{ isset($post) ? route('posts.update', $post->id) : route('posts.store') }}" enctype="multipart/form-data">
				@csrf
				@if (isset($post))
					@method('PUT')
				@endif
				<div class="form-group">
					<label for="title">Post title: </label>
					<input type="text" name="title" placeholder="Add a post title"
					class="form-control @error('title') is-invalid @enderror"
					value="{{ old('title') ?: ($post->title ?? '') }}">
					@error('title')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="description">Post description: </label>
					<textarea name="description" rows ='2' placeholder="Add a post description"
					class="form-control @error('description') is-invalid @enderror">{{ old('description') ?: ($post->description ?? '') }}</textarea>
					@error('description')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="content">Post content: </label>
					<input id="x" type="hidden" name="content" value="{{ old('content') ?: ($post->content ?? '') }}">
 					<trix-editor input="x" placeholder="Add a post content" style="overflow: scroll;"
					class="form-control @error('content') is-invalid @enderror" 
					></trix-editor>
					@error('content')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="image">Post image:</label>
					@if (isset($post))
						<div style="margin-bottom: 4px">
							<img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}" style="width: 100%">
						</div>
						<label for="image">Add another image</label>
					@endif
					<input type="file" name='image' class="form-control">
					@error('image')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="category">Select Category</label>
					<select name="category_id" id="category" class="form-control">
						@foreach ($categories as $category)
							<option value="{{ $category->id }}">
								{{ $category->name }}
							</option>
						@endforeach
					</select>
				</div>
				@if (!empty($tags))
					<div class="form-group">
						<label for="tags">Select Tags</label>
						<select name="tag_id[]" id="tags" class="form-control tags-multiple" multiple>
							@foreach ($tags as $tag)
								<option value="{{ $tag->id }}"  @if (isset($post) && $post->hasTag($tag->id)) selected @endif>
									{{ $tag->name }}
								</option>
							@endforeach
						</select>
					</div>					
				@endif
				<div class="form-group">
					<button type="submit" class="btn btn-success mt-3">
						{{ isset($post) ? 'Update' : 'Add' }}
					</button>
				</div>
			</form>
		</div>
	</div>
@endsection
@section('scripts')
	<script src="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.1/trix.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
	<script>
		$(document).ready(function() {
		    $('.tags-multiple').select2();
		});
	</script>
@endsection