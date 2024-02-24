@extends('layout.app')

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

    <div class="mt-8 mb-8"> <!-- Añade este div con margen superior he inferior -->
        <div class="mx-20"> <!-- Añade este div con margen horizontal -->



            <div class="container mx-auto px-4 mb-8">
                <div class="flex flex-wrap">

                    <div class="lg:pt-12 pt-6 w-full md:w-4/12 px-4 text-center">
                        <div
                            class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
                        >
                            <div class="px-4 py-5 flex-auto">
                                <div
                                    class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400"
                                >
                                    <i class="fas fa-tablet"></i>
                                </div>
                                <h6 class="text-xl font-semibold">Tecnología</h6>
                                <p class="mt-2 mb-4 text-gray-600">
                                    Avance y mejora en la sociedad.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="w-full md:w-4/12 px-4 text-center">
                        <div
                            class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
                        >
                            <div class="px-4 py-5 flex-auto">
                                <div
                                    class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-blue-400"
                                >
                                    <i class="fas fa-award"></i>
                                </div>
                                <h6 class="text-xl font-semibold">Ciencia</h6>
                                <p class="mt-2 mb-4 text-gray-600">
                                    Avance y mejora en la sociedad.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="pt-6 w-full md:w-4/12 px-4 text-center">
                        <div
                            class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg"
                        >
                            <div class="px-4 py-5 flex-auto">
                                <div
                                    class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-green-400"
                                >
                                    <i class="fas fa-users"></i>
                                </div>
                                <h6 class="text-xl font-semibold">Cultura</h6>
                                <p class="mt-2 mb-4 text-gray-600">
                                    Avance y mejora en la sociedad.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="flex flex-wrap items-center mt-32">
                    <div class="w-full md:w-5/12 px-4 mr-auto ml-auto">
                        <div
                            class="text-gray-600 p-3 text-center inline-flex items-center justify-center w-16 h-16 mb-6 shadow-lg rounded-full bg-gray-100"
                        >
                            <i class="fas fa-user-friends text-xl"></i>
                        </div>
                        <h3 class="text-3xl mb-2 font-semibold leading-normal">
                            Eventos
                        </h3>
                        <p
                            class="text-lg font-light leading-relaxed mt-4 mb-4 text-gray-700"
                        >
                            En la búsqueda, generación y difusión de conocimiento, el
                            Instituto Tecnológico Superior de Xalapa busca contribuir a la comunidad investigadora y
                            estudiantil con eventos que promuevan el avance tecnológico en beneficio de la sociedad.
                        </p>
                        <p
                            class="text-lg font-light leading-relaxed mt-0 mb-4 text-gray-700"
                        >
                            Somos una institución educativa que, desde hace más de veinte años, proporciona educación superior
                            tecnológica de calidad, con cobertura nacional, pertinente y equitativa, que contribuya a la
                            conformación de una sociedad justa y humana, con una perspectiva de sustentabilidad.
                        </p>
                        <a
                            href="{{ route('pages.eventos') }}"
                            class="font-bold text-yellow-600 mt-8"
                        >Comprueba nuestros eventos</a
                        >
                    </div>
                    <div class="w-full md:w-4/12 px-4 mr-auto ml-auto">
                        <div
                            class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded-lg bg-pink-600"
                        >
                            <img
                                alt="..."
                                src="{{ asset('upload/eventos.jpg') }}"
                                class="w-full align-middle rounded-t-lg"
                            />
                            <blockquote class="relative p-8 mb-4">
                                <svg
                                    preserveAspectRatio="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 583 95"
                                    class="absolute left-0 w-full block"
                                    style="height: 95px; top: -94px;"
                                >
                                    <polygon
                                        points="-30,95 583,95 583,65"
                                        class="text-yellow-600 fill-current"
                                    ></polygon>
                                </svg>
                                <h4 class="text-xl font-bold text-gray-700">
                                    Instituto Tecnológico Superior de Xalapa
                                </h4>
                                <p class="text-md font-light mt-2 text-gray-700">
                                    Nuestra misión es formar profesionistas
                                    competitivos con capacidad de impactar
                                    productivamente en el desarrollo mundial.
                                </p>
                                <p class="text-md font-light mt-2 text-gray-700">
                                    Nuestra visión es ser la institución
                                    educativa de vanguardia con prestigio mundial,
                                    formadora de profesionistas capaces de
                                    desarrollar alta tecnología con sentido ético.
                                </p>
                            </blockquote>
                        </div>
                    </div>
                </div>


                <div class="flex flex-wrap items-center mt-32">
                    <div class="w-full md:w-4/12 px-4 mr-auto ml-auto">
                        <div
                            class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded-lg bg-pink-600"
                        >
                            <figure class="relative max-w-md transition-all duration-300 cursor-pointer filter grayscale hover:grayscale-0">
                                <a href="{{ route('pages.eventos') }}">
                                    <img class="rounded-lg" src="{{ asset('upload/eventos.jpg') }}" alt="image description">
                                </a>
                                <figcaption class="absolute px-4 text-xl text-white bottom-6">
                                    <p>Galeria</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="w-full md:w-5/12 px-4 mr-auto ml-auto">
                        <div
                            class="text-gray-600 p-3 text-center inline-flex items-center justify-center w-16 h-16 mb-6 shadow-lg rounded-full bg-gray-100"
                        >
                            <i class="fa fa-picture-o text-xl"></i>
                        </div>
                        <h3 class="text-3xl mb-2 font-semibold leading-normal">
                            Galeria
                        </h3>
                        <p
                            class="text-lg font-light leading-relaxed mt-4 mb-4 text-gray-700"
                        >
                            En la búsqueda, generación y difusión de conocimiento, el
                            Instituto Tecnológico Superior de Xalapa busca contribuir a la comunidad investigadora y
                            estudiantil con eventos que promuevan el avance tecnológico en beneficio de la sociedad.
                        </p>
                        <p
                            class="text-lg font-light leading-relaxed mt-0 mb-4 text-gray-700"
                        >
                            Somos una institución educativa que, desde hace más de veinte años, proporciona educación superior
                            tecnológica de calidad, con cobertura nacional, pertinente y equitativa, que contribuya a la
                            conformación de una sociedad justa y humana, con una perspectiva de sustentabilidad.
                        </p>
                    </div>
                </div>

            </div>

        </div>
    </div>




@endsection

