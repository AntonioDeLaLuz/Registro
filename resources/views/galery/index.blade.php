@extends('layout.app')

@section('title')
    Galería
@endsection

@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

@endpush

@push('styles')
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

    <style>
        .contenido_swiper {
            position: relative;
            height: 100%;
            margin-top: 0px;
        }

        swiper-container {
            width: 100%;
            height: calc(100vh);
        }

        swiper-slide {
            text-align: center;
            font-size: 18px;
            background: rgb(255, 255, 255);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        swiper-container {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
@endpush


@section('contenido')

    <section>
    <div class="contenido_swiper">
        <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" navigation="true"
                          space-between="30"
                          loop="true">
            <swiper-slide><img src="{{ asset('upload/carrusel_1.jpg') }}" alt=""></swiper-slide>
            <swiper-slide><img src="{{ asset('upload/carrusel_2.jpg') }}" alt=""></swiper-slide>
            <swiper-slide><img src="{{ asset('upload/carrusel_3.jpg') }}" alt=""></swiper-slide>
            <swiper-slide><img src="{{ asset('upload/carrusel_4.jpg') }}" alt=""></swiper-slide>
            <swiper-slide><img src="{{ asset('upload/carrusel_5.jpg') }}" alt=""></swiper-slide>
    </div>
    </swiper-container>
    </section>


    <div class="mt-5 px-5 grid grid-cols-2 gap-2">
        <div>
            <img class="h-auto max-w-full rounded-lg" src="{{ asset('upload/carrusel_1.jpg') }}" alt="">
        </div>
        <div>
            <img class="h-auto max-w-full rounded-lg" src="{{ asset('upload/carrusel_2.jpg') }}" alt="">
        </div>
        <div>
            <img class="h-auto max-w-full rounded-lg" src="{{ asset('upload/carrusel_3.jpg') }}" alt="">
        </div>
        <div>
            <img class="h-auto max-w-full rounded-lg" src="{{ asset('upload/carrusel_4.jpg') }}" alt="">
        </div>
    </div>



@endsection
