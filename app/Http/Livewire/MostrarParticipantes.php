<?php

namespace App\Http\Livewire;

use App\Models\Evento;
use App\Models\Participante;
use Livewire\Component;

class MostrarParticipantes extends Component
{
       protected $listeners=['eliminarParticipante'];
       public function eliminarParticipante(Participante $participante){
           $participante->delete();
       }


//    public function render()
//    {
//        $evento=Evento::all();
//        $participantes = Participante::where('evento_id', $evento->id)->get();
//            ->whereNull('deleted_at')
//            ->paginate(10);
//        return view('livewire.mostrar-participantes', [
//            '$participantes' => $participantes
//        ]);
//    }

    public function render()
    {
        // Obtener todos los eventos
        $eventos = Evento::all();

        // Inicializar una colección vacía de participantes
        $participantes = collect();

        // Iterar sobre cada evento y obtener sus participantes
        foreach ($eventos as $evento) {
            $participantesEvento = Participante::where('evento_id', $evento->id)
                ->whereNull('deleted_at')
                ->paginate(10);

            // Agregar los participantes del evento actual a la colección de participantes
            $participantes = $participantes->merge($participantesEvento);
        }

        // Retornar la vista con los participantes
        return view('livewire.mostrar-participantes', [
            'participantes' => $participantes
        ]);
    }
}
