@extends('layouts.app')

@section('content')
	<div class="clearfix">
		<a href='{{ route('posts.create') }}' class="btn btn-success float-right"
		style="margin-bottom: 10px">Add Post</a>	
	</div>
	<div class="card card-default">
		<div class="card-header">All Posts</div>
		@if($posts->count() > 0)
			<table class="table card-body">
					<thead>
						<tr>
							<td>Image</td>
							<td>Title</td>
							<td class="text-center">Actions</td>
						</tr>
					</thead>			
					<tbody>
						@foreach($posts as $post)
							<tr>
								<td> 
									<img src="{{ asset('storage/'.$post->image) }}" alt="{{ $post->title }}"
									style="width: 100px; height: 50px;"> 
								</td>
								<td>{{ $post->title }}</td>
								<td>
									<form action="{{ route('posts.destroy', $post->id) }}" method="POST" 
										class="float-right ml-2">
										@csrf
										@method('DELETE')
										<button type="submit" class="btn btn-danger btn-sm">
											{{ $post->trashed() ? 'Delete' : 'Trash'}}
										</button>
									</form>
									@if (!$post->trashed())
									<a href="{{ route("posts.edit", $post->id) }}" 
										class="btn btn-primary btn-sm float-right">Edit</a>
									@else
										<a href="{{ route("trashed.restore", $post->id) }}" 
										class="btn btn-primary btn-sm float-right">Restore</a>
									@endif	
								</td>
							</tr>
						@endforeach
					</tbody>
			</table>		
		@else
			<div class="card-body">
				<h1 class="text-center">No posts yet.</h1>
			</div>
		@endif
	</div>
@endsection