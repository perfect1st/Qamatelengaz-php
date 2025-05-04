<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>{{app()->getLocale() == 'ar' ? $setting->setting_title_ar : $setting->setting_title_en}}</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="{{$setting->setting_keywords}}" name="keywords">
    <meta content="{{$setting->setting_description}}" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    {{-- <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet">  --}}

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{asset('lib/animate/animate.min.css')}}" rel="stylesheet">
    <link href="{{asset('lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('lib/lightbox/css/lightbox.min.css')}}" rel="stylesheet">

    @if (app()->getLocale() == 'ar')
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('css/bootstrap_ar.min.css')}}" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="{{asset('css/style_ar.css')}}" rel="stylesheet">
    @else
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    @endif
    
  
    <!-- Bootstrap CSS CDN -->
  {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> --}}
  <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">

  <style>
    .cairo_font{
        font-family: "Cairo" !important;
    }
  </style>
</head>
<body class="rigth cairo_font">

    
        <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-light p-0 left">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-end custom_left">
                <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                    <strong class="fa fa-map-marker-alt text-primary me-2"></strong>
                    <strong>
                        {{app()->getLocale() == 'ar' ? $setting->setting_site_address_ar  : $setting->setting_site_address_en }}

                    </strong>
                </div>
                {{-- <div class="h-100 d-inline-flex align-items-center py-3">
                    <strong class="far fa-clock text-primary me-2"></strong>
                    <strong>Mon - Fri : 09.00 AM - 09.00 PM</strong>
                </div> --}}
            </div>
            <div class="col-lg-5 px-5 text-start custom_rigth">
                <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                    <strong class="fa fa-phone-alt text-primary me-2"></strong>
                    <strong>{{$setting->setting_sitetell1}}</strong>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-sm-square bg-white text-primary me-0" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="{{ LaravelLocalization::getLocalizedURL(null, '') }}" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary">
                {{app()->getLocale() == 'ar' ? $setting->setting_title_ar  : $setting->setting_title_en }}
            </h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="{{ LaravelLocalization::getLocalizedURL(null, '') }}" onclick="controlActive(event)" class="nav-item nav-link {{ Route::currentRouteName() == 'home' ? 'active' : '' }}">الرئيسية</a>
                <a href="{{ LaravelLocalization::getLocalizedURL(null, '/#about') }}" onclick="controlActive(event)" class="nav-item nav-link">
                    {{app()->getLocale() == 'ar' ? $aboutUs->articles_title_ar  : $aboutUs->articles_title_en }}
                </a>
                <a href="{{ LaravelLocalization::getLocalizedURL(null, '/#service') }}" onclick="controlActive(event)" class="nav-item nav-link">
                    {{ app()->getLocale() == 'ar' ? $servicesDep->department_title_ar : $servicesDep->department_title_en}}
                </a>

                <a href="{{ LaravelLocalization::getLocalizedURL(null, '/#ourVision') }}" onclick="controlActive(event)" class="nav-item nav-link">
                    {{ app()->getLocale() == 'ar' ? $ourVision->articles_title_ar : $ourVision->articles_title_en}}
                </a>

                <a href="{{ LaravelLocalization::getLocalizedURL(null, '/ourMission') }}" class="nav-item nav-link {{ Route::currentRouteName() == 'ourMission' ? 'active' : '' }} ">
                    {{ app()->getLocale() == 'ar' ? $ourMission->articles_title_ar : $ourMission->articles_title_en}}
                </a>
                
                <a href="{{ LaravelLocalization::getLocalizedURL(null, '/#contact') }}" onclick="controlActive(event)" class="nav-item nav-link">
                    {{ app()->getLocale() == 'ar' ? "تواصل معنا" : "Contact Us"}}
                </a>
            </div>

            <!-- <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Get A Quote<i class="fa fa-arrow-right ms-3"></i></a> -->
        </div>
    </nav>
    <!-- Navbar End -->

        <main class="py-4">
            @yield('content')
        </main>
        
        <div id="flag" style="
    position: fixed;
    left:0px;
    top:50%;
    margin-top:-50px;
    width: 34px;
    height:120px;
    padding-top:20px;
    background:transparent url('{{ asset('bg.png') }}') no-repeat scroll;
    z-index: 1000000;
    ">
        <a id="language" href="{{ LaravelLocalization::getLocalizedURL('ar', null, [], true) }}"><img
                src="{{ asset('arabic.png') }}" style="margin-top: -2px;opacity: 1;margin-right: 4px;width: 30px;"
                alt="Arabic"></a>
        <br>
        <a id="language" href="{{ LaravelLocalization::getLocalizedURL('en', null, [], true) }}"><img
                src="{{ asset('en.png') }}" alt="English"
                style="opacity: 1;/* margin-top: 6px; */margin-right: 4px;width: 30px;"></a>
    </div>

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <h4 class="text-light mb-4">العنوان</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>
                        {{app()->getLocale() == 'ar' ? $setting->setting_site_address_ar  : $setting->setting_site_address_en }}
                    </p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>{{$setting->setting_sitetell1}}</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>{{$setting->setting_site_email}}</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <h4 class="text-light mb-4">خدماتنا</h4>
                    <a class="btn btn-link" href="">خدمات </a>
                    <a class="btn btn-link" href="">Furniture Remodeling</a>
                    <a class="btn btn-link" href="">Wooden Floor</a>
                    <a class="btn btn-link" href="">Wooden Furniture</a>
                    <a class="btn btn-link" href="">Custom Carpentry</a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <h4 class="text-light mb-4"> روابط سريعة </h4>
                    <a class="btn btn-link" href=""> نبذة عنا </a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Our Services</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">Support</a>
                </div>
                <!-- <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div> -->
            </div>
        </div>
        <!-- <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved.
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
    <!-- Footer End -->

     <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('lib/wow/wow.min.js')}}"></script>
    <script src="{{asset('lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{asset('lib/counterup/counterup.min.js')}}"></script>
    <script src="{{asset('lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('lib/isotope/isotope.pkgd.min.js')}}"></script>
    <script src="{{asset('lib/lightbox/js/lightbox.min.js')}}"></script>
    <!-- Template Javascript -->
    <script src="{{asset('js/main.js')}}"></script>


    <script>
        function controlActive(e)
        {
          
           // console.log('done');
           let links=document.getElementsByClassName('nav-link');
           for (var i = 0; i < links.length; i++) {
               links[i].classList.remove('active');
           }
           e.target.classList.add('active');
        }
    </script>
</body>
