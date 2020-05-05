@extends('layouts.theme')
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('{{ asset('storage/' . $post->image) }}');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">{{ $post->title }}</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="blog.html">Blog <i class="ion-ios-arrow-forward"></i></a></span> <span>{{ $post->title }} <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 ftco-animate">
          	{!! $post->content !!}
            <div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                @forelse($post->tags as $tag)
                  <a href="#" class="tag-cloud-link">{{ $tag->name }}</a>
                @empty
                @endforelse
              </div>
            </div>
            
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
                <img src="{{ asset('storage/' . $post->user->profile->picture) }}" alt="Profile Image" class="img-fluid mb-4" style="border-radius: 50%">
              </div>
              <div class="desc">
                <h3>{{ $post->user->name }}</h3>
                <p>{{ $post->user->profile->about }}</p>
              </div>
            </div>

          </div> <!-- .col-md-8 -->
          <div class="col-lg-4 sidebar pl-lg-5 ftco-animate">
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3>Categories</h3>
                @forelse ($categories as $category)
                  <li><a href="#">{{ $category->name }} <span class="ion-ios-arrow-forward"></span></a></li>
                @empty
                @endforelse
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Tag Cloud</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">cat</a>
                <a href="#" class="tag-cloud-link">abstract</a>
                <a href="#" class="tag-cloud-link">people</a>
                <a href="#" class="tag-cloud-link">person</a>
                <a href="#" class="tag-cloud-link">model</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->
@endsection    