<?php

namespace App\Http\Controllers;

use App\Models\Evento;
use App\Models\Like;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    //
    public function store(Request $request, Evento $evento){
        // Like::create([
        //     'user_id'=>$request->user()->id,
        //     '$eventos'=>$evento->id
        // ]);

        // Guardar los datos en la misma relación
        $evento->likes()->create([
            'user_id'=>$request->user()->id
        ]);
        return back();
    }

    public function destroy(Request $request, Evento $evento){
        $request->user()->likes()->where('evento_id',$evento->id)->delete();
        return back();
    }
}
