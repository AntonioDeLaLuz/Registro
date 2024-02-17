<?php

namespace App\Http\Controllers;

use App\Models\Evento;
use App\Models\Participante;
use Illuminate\Http\Request;

class ParticipanteController extends Controller
{
    //
    public function index (){
        $participantes=Participante::all();
        return view('participantes.index',['participantes'=>$participantes]);
    }
    public function create(Evento $evento){
        return view('participantes.create',['evento'=>$evento]);
    }
    public function store(Request $request, Evento $evento){
        $this->validate($request,[
            'name'=>' required | min:3',
            'lastname_p'=>'',
            'lastname_m'=>'required ',
            'email_institucional'=>'required | min:5 | max:255',
            'email_personal'=>'required | min:5 | max:255',
            'number'=>'required | min:5 | max:255',
            'instituto'=>'required',
            'name_academico'=>'required | min:5 | max:255',
            'grade_academico'=>'required',
            'area'=>'required'
        ]);
        Participante::create([
            'user_id' => auth()->user()->id,
            'evento_id' => $evento->id,
            'name'=>$request->name,
            'lastname_p'=>"",
            'lastname_m'=>$request->lastname_m,
            'email_institucional'=>$request->email_institucional,
            'email_personal'=>$request->email_personal,
            'number'=>$request->number,
            'instituto'=>$request->instituto,
            'name_academico'=>$request->name_academico,
            'grade_academico'=>$request->grade_academico,
            'area'=>$request->area
         ]);
        return redirect()->route('participantes.index');

        //  regresar a la pagina anterior
//      return view('evento.profile',['evento'=>evento->id]);

//        return redirect()->route('pages.eventos');
    }

    public function edit(Participante $participante){
        return view('participantes.edit',['participante'=>$participante]);
    }

    public function update(Participante $participante,Request $request){
        $this->validate($request,[
            'name'=>' required | min:3',
            'lastname_p'=>'',
            'lastname_m'=>'required ',
            'email_institucional'=>'required | min:5 | max:255',
            'email_personal'=>'required | min:5 | max:255',
            'number'=>'required | min:5 | max:255',
            'instituto'=>'required',
            'name_academico'=>'required | min:5 | max:255',
            'grade_academico'=>'required',
            'area'=>'required'
        ]);
        $participante->update([
            'name'=>$request->name,
            'lastname_p'=>"",
            'lastname_m'=>$request->lastname_m,
            'email_institucional'=>$request->email_institucional,
            'email_personal'=>$request->email_personal,
            'number'=>$request->number,
            'instituto'=>$request->instituto,
            'name_academico'=>$request->name_academico,
            'grade_academico'=>$request->grade_academico,
            'area'=>$request->area
         ]);
         $participantes=Participante::all();
         return view('participantes.index',['participantes'=>$participantes]);
    }

    public function destroy(Participante $participante,Request $request){
        $this->validate($request,[
            'deleted_at'=>'required'
        ]);
        $participante->update([
            'deleted_at'=>$request->deleted_at,
        ]);
        $participantes=Participante::all();
        return view('participantes.index',['participantes'=>$participantes]);
    }

//    public function destroy(Participante $participante){
//        $participante->delete();
//        $registers_event = Participante::all();
//        return redirect()->route('admin.registerEvent', ['registers_event' => $registers_event]);
//    }

    public function updateStatusValidateRegisterEvent(Participante $participante){
        $participante->update([
            'validacion'=>'1'
        ]);
        return back();
    }
}
