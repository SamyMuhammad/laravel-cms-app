@extends('layouts.app')

@section('stylesheets')
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.1/trix.css">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
@endsection

@section('content')
	<div class="card card-default">
		<div class="card-header">Profile</div>
		<div class="card-body">
			<form  method ="POST" action="{{ route('users.update', $user->id) }}" enctype="multipart/form-data">
				@csrf
				<div class="form-group">
					<label for="picture">Profile Picture: </label>
					<img src="{{ asset('storage/' . $profile->picture) }}" class="rounded mx-auto d-block mb-4" style="border-radius: 50%; height: 25%; width: 25%">
					<input type="file" name="picture" class="form-control">
					@error('picture')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="name">Name: </label>
					<input type="text" name="name"	class="form-control"
					value="{{ old('name') ?: $user->name }}">
					@error('name')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="email">Email: </label>
					<input type="email" name="email"	class="form-control"
					value="{{ old('email') ?: $user->email }}">
					@error('email')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="about">About: </label>
					<textarea raws=3 name="about" class="form-control" placeholder="Tell us about you.">{{ old('about') ?: $profile->about }}</textarea>
					@error('about')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="facebook">Facebook: </label>
					<input type="url" name="facebook"	class="form-control"
					value="{{ old('facebook') ?: $profile->facebook }}">
					@error('facebook')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<label for="twitter">Twitter: </label>
					<input type="url" name="twitter"	class="form-control"
					value="{{ old('twitter') ?: $profile->twitter }}">
					@error('twitter')
						<div class="alert alert-danger mt-1">{{ $message }}</div>
					@enderror
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success mt-3">
						Update Profile
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