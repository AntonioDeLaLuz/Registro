<div>
    <div class=" container mx-auto">
        <div>
            <livewire:buscar-eventos>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-5">
            @forelse ($eventos as $evento)
            <div class="grid md:grid-cols-2 gap-8 border-b-primario rounded-md">
                <div class="overflow-hidden">
                    <img class=" w-full" src="{{ asset('uploads') . '/' . "$evento->urlimg" }}" alt="{{ $evento->name }}">
                </div>
                <div class=" p-4 grid items-center">
                    <p class="font-bold text-primario uppercase text-center">{{ $evento->name }}</p>
                    <p class="font-bold text-gray-500 capitalize text-center"><em> {{ $evento->sub_title }}</em></p>
                    <a class="font-semibold cursor-pointer text-center uppercase  bg-BotonesVerMas px-3 py-2 rounded-xl">Ver más</a>
                </div>
            </div>
            @empty
                <p class="text-center mt-5">No hay ninguna publicación. </p>
        @endforelse

        </div>

    </div>x
</div>


