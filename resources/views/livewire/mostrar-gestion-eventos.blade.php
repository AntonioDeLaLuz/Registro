<div class="mt-5 sm:mt-0">
    <table class="w-full">
        <thead class="bg-primario ">
        <tr>
            <th class="uppercase text-white p-2">N.</th>
            <th class="uppercase text-white p-2">Titulo</th>
            <th class="uppercase text-white p-2">Fecha de evento</th>
            <th class="uppercase text-white p-2">Acciones</th>
        </tr>
        </thead>
        <tbody>
        @php $contador=1;@endphp
        @foreach ($eventos as $evento )
            <tr>
                <td class="text-center">{{$contador++}}</td>
                <td class="text-center">{{$evento->title}}</td>
                @php
                    $fechaFormateada = date('d-m-Y', strtotime($evento->date));
                @endphp
                <td class="text-center">{{$fechaFormateada}}</td>
                <td>
                    <div class="sm:grid gap-5">

                        <a href="{{ route('participantes.index',$evento)}}" class="text-xl text-white font-bold inline-block w-full mb-2 sm:mb-0 text-center bg-secundario p-2 rounded-md"><i class="fa-solid fa-pen fa-bounce sm:mr-2" style="color: #ffffff;"></i></a>

                    </div>
                </td>
            </tr>
        @endforeach
        </tbody>

    </table>

    <div class="mt-5">
        {{ $eventos->links() }}
    </div>

</div>

