@extends('layouts.app')

@section('content')

	<div class="card card-default">
		<div class="card-header">All Users</div>
		@if($users->count() > 0)
			<table class="table card-body">
					<thead>
						<tr>
							<th>Image</th>
							<th>Name</th>
							<th>Role</th>
						</tr>
					</thead>			
					<tbody>
						@foreach($users as $user)
							<tr>
								<td>
									@if (isset($user->profile->picture))
										<img src="{{ asset('storage/'.$user->profile->picture) }}" alt="{{ $user->name }}"
										style="width: 100px; height: 50px;">
									@else	
										<span>Avatar</span>
									@endif	
								</td>
								<td>
									{{ $user->name }}
								</td>
								@if(! $user->isAdmin())
									<td>
										<form method="POST" action="{{ route('users.make-admin', $user->id) }}">
											@csrf
											<button type="submit" class="btn btn-success">Make admin</button>
										</form>
									</td>
								@else
									<td>
										{{ ucfirst($user->role) }}
									</td>
								@endif
							</tr>
						@endforeach
					</tbody>
			</table>		
		@else
			<div class="card-body">
				<h1 class="text-center">No users yet.</h1>
			</div>
		@endif
	</div>
@endsection