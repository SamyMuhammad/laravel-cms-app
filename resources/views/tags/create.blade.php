@extends('layouts.app')

@section('content')
	{{-- @if(session()->has('error'))
		<div class="alert alert-danger">{{ session('error') }}</div>
	@endif --}}
	<div class="card card-default">
		<div class="card-header">{{ isset($tag) ? 'Update tag' : 'Add a new Tag' }}</div>
		<div class="card-body">
			<form  method ="POST" action="{{ isset($tag) ? route('tags.update', $tag->id) : route('tags.store') }}">
				@csrf
				@if (isset($tag))
					@method('PUT')
				@endif
				<div class="form-group">
					<label for="name">Tag name: </label>
					<input type="text" name="name" placeholder="Add a tag name"
					class="form-control @error('name') is-invalid @enderror"
					value="{{ isset($tag) ? $tag->name : '' }}">
					@error('name')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">
						{{ isset($tag) ? 'Update' : 'Add' }}
					</button>
				</div>
			</form>
		</div>
	</div>
@endsection