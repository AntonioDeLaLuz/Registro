<?php

namespace App\Http\Livewire;


use App\Models\Evento;
use Livewire\Component;
use Illuminate\Support\Facades\DB;

class HomeEventos extends Component
{
    public $termino;
      // Cuando se invoque la función terminos busqueda del emit accionar la función buscar
      protected $listeners=['terminosBusqueda'=>'buscar'];

      public function buscar($termino){
          $this->termino=$termino;
      }

    public function render()
    {
          // $vacantes=Vacante::all();
          $eventos=Evento::when($this->termino, function ($query){
            $query->where('name', 'LIKE', '%' . $this->termino . "%");
        })->when($this->termino, function ($query){
            $query->orWhere('sub_title', 'LIKE', '%' . $this->termino . "%");
        })->get();

        return view('livewire.home-eventos',['eventos'=>$eventos]);
    }
}
