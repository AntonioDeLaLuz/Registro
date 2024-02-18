<?php

namespace App\Http\Livewire;

use App\Models\Evento;
use Livewire\Component;

class MostrarGestionEventos extends Component
{

    public function render()
    {
        $eventos = Evento::where('id', '>', 0)
            ->withTrashed()
            ->paginate(10);
        return view('livewire.mostrar-eventos', [
            'eventos' => $eventos
        ]);
    }
}
