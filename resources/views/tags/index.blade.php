@extends('layouts.app')

@section('content')
	<div class="clearfix">
		<a href='{{ route('tags.create') }}' class="btn btn-success float-right"
		style="margin-bottom: 10px">Add Tag</a>	
	</div>
	<div class="card card-default">
		<div class="card-header">All Tags</div>
		<table class="table card-body">
			
				<tbody>
					@forelse($tags as $tag)
						<tr>
							<td>
								{{ $tag->name }}
								<span class="badge badge-primary ml-2">{{ $tag->posts->count() }}</span> 
							</td>
							<td>
								<form action="{{ route('tags.destroy', $tag->id) }}" method="POST" 
									class="float-right ml-2">
									@csrf
									@method('DELETE')
									<button type="submit" class="btn btn-danger btn-sm">Delete</button>
								</form>

								<a href="{{ route("tags.edit", $tag->id) }}" 
									class="btn btn-primary btn-sm float-right">Edit</a>
							</td>
						</tr>
					@empty
						<div class="card-body">
							<h1 class="text-center">No tags yet.</h1>
						</div>
					@endforelse
				</tbody>
			
		</table>
	</div>
@endsection