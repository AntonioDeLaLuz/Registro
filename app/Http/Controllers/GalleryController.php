<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GalleryController extends Controller
{
    //
    public function index(){
        $gallery_eventos=DB::table('eventos')->get();
        return view('galery.index',['gallery_eventos'=>$gallery_eventos]);
    }
}
