<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    {{-- Barra de estilos --}}
    @stack('styles')
    <link rel="stylesheet" href="{{ asset('build/assets/app.25aa1ea4.css') }}">
    {{-- <link rel="shortcut icon" href="{{ asset('img/favicon/') }}" type="image/x-icon"> --}}
    {{-- archivos js --}}
    <script src="{{ asset('build/assets/app.9449d640.js') }}" defer></script>
    <script src="https://kit.fontawesome.com/c311e4c45d.js" crossorigin="anonymous"></script>
    {{-- Agrega estilos de live --}}
    @livewireStyles

</head>
<style>
    .fijarbody{
        overflow: hidden;
    }
    .contenedor-menu {
    position: fixed;
    background-color: rgba(0,0,0, .7);
    z-index: 2;
    width: 100%;
    height: 100%;
    top: 5rem;
    display: flex;
    flex-direction: column;
    padding: 1rem 0;
}
    .fijo {
        position: fixed;
        width: 100%;
    }
    footer {
        position: relative;
        bottom: 0;
        width: 100%;
    }
    main {
        margin-bottom: 100px; /* Agregar un margen inferior para el pie de página */
    }
</style>
<body class="bg-white    flex flex-col justify-between">
    <header class="p-5  bg-primario shadow">
        <!-- navbar-->

        <nav class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 start-0 border-b border-gray-200 dark:border-gray-600">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="{{ route('index') }}" class="flex items-center space-x-3 rtl:space-x-reverse">
{{--                    <img src="{{ asset('public/img/Logo_itsx_blanco_peque.png') }}" class="h-8" alt="TecRegistra Logo">--}}
                    <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">TecRegistra</span>
                </a>
                <div class="flex md:order-2 space-x-3 md:space-x-0 rtl:space-x-reverse">
                    @auth
                        <!-- Si el usuario está autenticado, mostrar el botón de cerrar sesión -->
                        <form method="POST" action="{{ route('register.logout') }}">
                            @csrf
                            <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Cerrar Sesión</button>
                        </form>
                    @endauth
                    @guest
                        <!-- Si el usuario no está autenticado, mostrar el botón de iniciar sesión -->
                        <a href="{{ route('register.login') }}" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Iniciar Sesión</a>
                    @endguest
                    <button data-collapse-toggle="navbar-sticky" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-sticky" aria-expanded="false">
                        <span class="sr-only">Open main menu</span>
                        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                        </svg>
                    </button>
                </div>
                <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
                    <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                        <li>
                            <a href="{{ route('index') }}" class="block py-2 px-3 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500" aria-current="page">Inicio</a>
                        </li>
                        <li>
                            <a href="{{ route('pages.eventos') }}" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Eventos</a>
                        </li>
                        <li>
                            <a href="{{ route('pages.eventos') }}" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Galería</a>
                        </li>
                        @auth
                            @if (auth()->user()->type == 2)
                                <li>
                                    <a href="{{ route('admin.index') }}" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Administración</a>
                                </li>
                            @endif
                        @endauth
                    </ul>
                </div>
            </div>
        </nav>

        <!--final de la navbar-->
    </header>
    <main class="">
        {{-- Contenedor del menu de barra --}}
        <section class="hero"></section>

        @yield('contenido')
    </main>


    <footer class="bg-primario py-2 mt-10">
        <div class="container mx-auto grid md:grid-cols-5 gap-5">
            <div class="col-span-2">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3760.906711496011!2d-96.88233098512036!3d19.50264898684455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85db324c8ce295c7%3A0x4da58d2adc774de0!2sInstituto%20Tecnol%C3%B3gico%20Superior%20de%20Xalapa!5e0!3m2!1ses-419!2smx!4v1664514164837!5m2!1ses-419!2smx"
                    class="w-full h-80" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="">
                <div class="py-10">
                    <p class="mb-3 text-white text-center md:text-left text-4xl">Ubicación</p>
                    <div class="p-5">
                        <p class="mb-3 text-white text-center md:text-left">Sección 5A Reserva Territorial S/N</p>
                        <p class="mb-3 text-white text-center md:text-left">Santa Bárbara, 91096</p>
                        <p class="mb-3 text-white text-center md:text-left">Xalapa-Enríquez, Ver.</p>
                    </div>
                </div>
            </div>
            <div class="col-span-2">
            </div>
        </div>

        <div class="py-3 px-0">
            <p class="font-bold text-center text-white">TecRegistra - &copy;Todos los derechos reservados
                {{ now()->year }}</p>
        </div>
    </footer>
    @livewireScripts
    @stack('scripts')
</body>
</html>
