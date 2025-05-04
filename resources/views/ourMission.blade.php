@extends('layouts.app')
@section('content')

<!-- نبذة عنا -->
<div class="container-fluid bg-light overflow-hidden my-5 px-lg-0" id="about">
    <div class="container about px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 ps-lg-0" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="{{asset('articles/' . $ourMission->articles_image)}}" style="object-fit: cover;" alt="">
                </div>
            </div>
            <div class="col-lg-6 about-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="p-lg-5 pe-lg-0">
                    <div class="section-title text-start">
                        <h1 class="display-5 mb-4 cairo_font">
                            {{app()->getLocale() == 'ar' ? $ourMission->articles_title_ar  : $ourMission->articles_title_en }}
                        </h1>
                    </div>
                    <p class="mb-4 pb-2 cairo_font">
                        {!! app()->getLocale() == 'ar' ? $ourMission->articles_subject_ar : $ourMission->articles_subject_en !!}
                    </p>
                   
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

@endsection