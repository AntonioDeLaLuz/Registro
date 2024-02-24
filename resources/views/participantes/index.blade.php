@extends('layout.app')
@section('title')
    Participantes
@endsection
@section('contenido')
    <div class="mx-auto w-10/12">
        <div class="flex justify-end my-5">
            <a href="{{ route('admin.index') }}" class="bg-BotonesVolver uppercase font-bold border-none text-white py-6 px-10 mx-auto inline-block shadow-sm rounded-xl cursor-pointer"> Volver</a>
            <a href="{{ route('participantes.create',['evento' => $evento]) }}" class="font-bold bg-green-500 border-none text-white py-4 px-8 mx-auto block shadow-sm rounded-md text-2xl hover:cursor-pointer">Registar</a>
            <a href="{{ route('list.assistants.preview.pdf',['evento' => $evento]) }}" class="font-bold bg-blue-500 border-none text-white py-4 px-8 mx-auto block shadow-sm rounded-md text-2xl hover:cursor-pointer " target="_blank">Ver lista</a>
            <a href="{{ route('excel',['evento' => $evento]) }}" class="font-bold bg-blue-500 border-none text-white py-4 px-8 mx-auto block shadow-sm rounded-md text-2xl hover:cursor-pointer " target="_blank">Generar excel</a>
        </div>
        <div class="mt-5 sm:mt-0">
            <table class="w-full">
                <thead class="bg-primario ">
                    <tr>
                        <th class="uppercase text-white p-2">N.</th>
                        <th class="uppercase text-white p-2">Nombre completo</th>
                        <th class="uppercase text-white p-2">Instituto</th>
                        <th class="uppercase text-white p-2">Nombre academico</th>
                        <th class="uppercase text-white p-2">Grado academico</th>
                        <th class="uppercase text-white p-2">Acciones</th>
                    </tr>
            </thead>
            <tbody>
                @php $contador=1;@endphp
                @foreach ($participantes as $participante )
                <tr>
                    <td class="text-center">{{$contador++}}</td>
                    <td class="text-justify">{{$participante->name . " " . $participante->lastname_p }}</td>
                    <td class="text-center">{{$participante->instituto}}</td>
                    <td class="text-center">{{$participante->name_academico}}</td>
                    <td class="text-center">{{$participante->grade_academico}}</td>
                    <td>
                        <div class="sm:grid  sm:grid-cols-2  gap-5">

                            <a href="{{ route('participantes.edit', ['evento' => $evento,'participante' => $participante]) }}" class="text-xl text-white font-bold inline-block w-full mb-2 sm:mb-0 text-center bg-secundario p-2 rounded-md"><i class="fa-solid fa-pen fa-bounce sm:mr-2" style="color: #ffffff;"></i></a>


                            <button wire:click="$emit('mostrarAlerta',{{$participante->id}})"
                                    class="text-white text-xl bg-red-500 font-bold flex w-full p-2 rounded-md  items-center justify-center">
                                    <i class="fa-solid fa-trash fa-bounce sm:mr-2" style="color: #ffffff;"></i>
                                    </button>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>

        </div>
        <livewire:mostrar-eventos>
    </div>
@endsection

