<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AppController;
use App\Http\Controllers\LikeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ImagenController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\EventosController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\ParticipanteController;
use App\Http\Controllers\PDF\InvitationController;
use App\Http\Controllers\PDF\ListAssistantsController;
use App\Http\Controllers\Export\ListAssistantsExcelController;

// Index
Route::get('/', [AppController::class,'index'])->name('index');
Route::get('/eventos', [AppController::class,'appEventos'])->name('pages.eventos');

// Imagenes
Route::post('/imagenes', [ImagenController::class,'store'])->name('image.store');

// Admin
Route::get('/administracion', [AdminController::class,'index'])->name('admin.index');
Route::get('/administracion/eventos', [AdminController::class,'adminEventos'])->name('admin.eventos');
Route::get('/administracion/gestion/eventos', [AdminController::class,'adminGestionEventos'])->name('admin.gestion_eventos');
Route::get('/administracion/comentarios', [AdminController::class,'adminComentarios'])->name('admin.comentarios');
Route::get('/administracion/usuarios', [AdminController::class,'adminUsers'])->name('admin.users');
Route::get('/administracion/colaboradores', [AdminController::class,'adminPosts'])->name('admin.posts');

Route::get('/administracion/inscripciones', [AdminController::class,'adminRegisterEvent'])->name('admin.inscripciones');

// Login
Route::get('/iniciar-sesion',[LoginController::class,'index'])->name('register.login');
Route::post('/iniciar-sesion',[LoginController::class,'store']);
Route::post('/cerrar-sesion',[LogoutController::class,'store'])->name('register.logout');

// Usuarios
Route::get('/crear-usuario',[ RegisterController::class,'create'])->name('register.create');
Route::post('/crear-usuario',[ RegisterController::class,'store']);

// Comentarios
Route::post('/comentario/{evento:id}',[ComentarioController::class,'store'])->name('comentarios.store');
Route::post('/comentario/{comentario}',[ ComentarioController::class,'update'])->name('comentarios.validate');
Route::delete('/comentario/{comentario}',[ ComentarioController::class,'destroy'])->name('comentarios.destroy');

// Likes
Route::post('/eventos/{eventos}/likes',[LikeController::class,'store'])->name('eventos.likes.store');
Route::delete('/eventos/{eventos}/likes',[LikeController::class,'destroy'])->name('eventos.likes.destroy');

//Eventos
Route::get('/eventos/registrar', [EventosController::class,'create'])->name('eventos.create');
Route::post('/eventos/registrar', [EventosController::class,'store']);
Route::get('/eventos/{evento}/edit',[ EventosController::class,'edit'])->name('eventos.edit');
Route::post('/eventos/{evento}/edit',[ EventosController::class,'update']);
Route::get('/eventos/{evento:id}',[EventosController::class,'show'])->name('evento.show');


//Catalogo
Route::get('/catalogo', [EventosController::class,'index'])->name('eventos.catalogue');


// Template de invitacion
Route::get('/invitation/preview/pdf',[ InvitationController::class,'previewInvitation'])->name('invitation.preview.pdf');
Route::get('/invitation/send/pdf',[ InvitationController::class,'sendInvitation'])->name('invitation.send.pdf');

Route::get('/evento/{evento}/participantes/list/assistants/preview/pdf',[ ListAssistantsController::class,'previewListAssistants'])->name('list.assistants.preview.pdf');

// Excel
Route::get('/export/list/assistants', [ListAssistantsExcelController::class, 'ListExportExcel'])->name('excel');

// Participante
Route::get('/evento/{evento}/participantes', [ParticipanteController::class,'index'])->name('participantes.index');
Route::get('/participantes/Eliminar', [ParticipanteController::class,'destroy'])->name('participantes.destroy');
Route::get('/participantes/registrar', [ParticipanteController::class,'create'])->name('participante.create');
Route::post('/participantes/registrar', [ParticipanteController::class,'store']);
Route::get('/participantes/{participante}/edit',[ ParticipanteController::class,'edit'])->name('participante.edit');
Route::post('/participantes/{participante}/edit',[ ParticipanteController::class,'update']);


Route::post('/inscripcion-eventos/validar/registro/evento/{register_event}',[ ParticipanteController::class,'updateStatusValidateRegisterEvent'])->name('participante.validate');
