@extends('layouts.app')

@section('content')
	@if(session()->has('error'))
		<div class="alert alert-danger">{{ session('error') }}</div>
	@endif
	<div class="card card-default">
		<div class="card-header">{{ isset($category) ? 'Update category' : 'Add a new Category' }}</div>
		<div class="card-body">
			<form  method ="POST" action="{{ isset($category) ? route('categories.update', $category->id) : route('categories.store') }}">
				@csrf
				@if (isset($category))
					@method('PUT')
				@endif
				<div class="form-group">
					<label for="name">Category name: </label>
					<input type="text" name="name" placeholder="Add a category name"
					class="form-control @error('name') is-invalid @enderror"
					value="{{ isset($category) ? $category->name : '' }}">
					@error('name')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">
						{{ isset($category) ? 'Update' : 'Add' }}
					</button>
				</div>
			</form>
		</div>
	</div>
@endsection