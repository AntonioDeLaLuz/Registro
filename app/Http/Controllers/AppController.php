<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Evento;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class AppController extends Controller
{
    public function index(){
        $eventos=DB::table('eventos')->skip(2)->take(4)->get();
        return view('index',['eventos'=>$eventos]);
    }
    public function appEventos()
    {
        $eventos = Evento::whereNull('deleted_at')->get();
        $nombreMes = ''; // Inicializamos la variable fuera del bucle
        foreach ($eventos as $evento) {
            $fechaCarbon = Carbon::parse($evento->date);
            $fechaCarbon->locale('es');
            $nombreMes = $fechaCarbon->format('F'); // Actualizamos el valor en cada iteración
        }
        return view('page.eventos', ['eventos' => $eventos, 'nombreMes' => $nombreMes]);
    }

}
