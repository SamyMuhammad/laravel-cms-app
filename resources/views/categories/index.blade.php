@extends('layouts.app')

@section('content')
	<div class="clearfix">
		<a href='{{ route('categories.create') }}' class="btn btn-success float-right"
		style="margin-bottom: 10px">Add Category</a>	
	</div>
	<div class="card card-default">
		<div class="card-header">All Categories</div>
		<table class="table card-body">
			
				<tbody>
					@forelse($categories as $category)
						<tr>
							<td>{{ $category->name }}</td>
							<td>
								<form action="{{ route('categories.destroy', $category->id) }}" method="POST" 
									class="float-right ml-2">
									@csrf
									@method('DELETE')
									<button type="submit" class="btn btn-danger btn-sm">Delete</button>
								</form>

								<a href="{{ route("categories.edit", $category->id) }}" 
									class="btn btn-primary btn-sm float-right">Edit</a>
							</td>
						</tr>
					@empty
						<div class="card-body">
							<h1 class="text-center">No categories yet.</h1>
						</div>
					@endforelse
				</tbody>
			
		</table>
	</div>
@endsection