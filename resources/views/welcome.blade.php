@extends('layouts.theme')
@section('content')
    <div class="hero-wrap js-fullheight" style="background-image: url(asset('images/bg_1.jpg'));" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-12 ftco-animate">
            <h2 class="subheading">Hello! Welcome to</h2>
            <h1 class="mb-4 mb-md-0">Laravel CMS</h1>
            <div class="row">
                <div class="col-md-7">
                    <div class="text">
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        <div class="mouse">
                            <a href="#" class="mouse-icon">
                                <div class="mouse-wheel"><span class="ion-ios-arrow-round-down"></span></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    @forelse ($posts as $post)
                        <div class="case">
                            <div class="row">
                                <div class="col-md-6 col-lg-6 col-xl-8 d-flex">
                                    <a href="{{ route('posts.show', $post->id) }}" class="img w-100 mb-3 mb-md-0" style="background-image: url({{ asset('storage/' . $post->image) }});"></a>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4 d-flex">
                                    <div class="text w-100 pl-md-3">
                                        <span class="subheading">{{ $post->category->name }}</span>
                                        <h2><a href="{{ route('posts.show', $post->id) }}">{{ $post->title }}</a></h2>
                                        <ul class="media-social list-unstyled">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                              </ul>
                                        <div class="meta">
                                            <p class="mb-0">
                                              <a href="#">{{ $post->created_at->format('d - M - Y') }}</a> | <a href="#">{{ $post->user->name }}</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="text w-100 pl-md-3">
                            <h2>No posts yet.</h2>
                        </div>
                    @endforelse
                </div>
            </div>
            {!! $posts->links() !!}
        </div>
    </section>

@endsection
  {{-- 

@if (Route::has('login'))
  <div class="top-right links">
      @auth
          <a href="{{ url('/home') }}">Home</a>
      @else
          <a href="{{ route('login') }}">Login</a>

          @if (Route::has('register'))
              <a href="{{ route('register') }}">Register</a>
          @endif
      @endauth
  </div>
@endif

   --}}