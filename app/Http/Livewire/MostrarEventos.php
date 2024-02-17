<?php

namespace App\Http\Livewire;

use App\Models\Evento;
use Livewire\Component;

class MostrarEventos extends Component
{
       protected $listeners=['eliminarEvento'];
       public function eliminarEvento(Evento $evento){
           $evento->delete();
       }

    public function render()
    {
        $eventos=Evento::where('id','>',0)->paginate(10);
        return view('livewire.mostrar-eventos',[
            'eventos'=>$eventos
        ]);
    }
}
