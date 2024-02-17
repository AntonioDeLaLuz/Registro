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
    public function appEventos(){

        $eventos=Evento::all();
        $mes = new Collection();
        foreach ($eventos as $evento) {
            $fechaCarbon = Carbon::parse($evento->date);
            $fechaCarbon->locale('es');
            $nombreMes = $fechaCarbon->format('F');
        }
        return view('page.eventos',['eventos'=>$eventos,'nombreMes'=>$nombreMes]);
    }
}
