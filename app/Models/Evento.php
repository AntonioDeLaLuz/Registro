<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Evento extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = [
        'title',
        'sub_title',
        'author',
        'descripcion',
        'date',
        'urlimg'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */

    protected $hidden = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    // Obtener los comentarios
    public function comentarios()
    {
        // Una publicacion puede tener multiples comentarios
        // return $this->hasMany(Comentario::class)->join('users', 'users.id', '=', 'comentarios.user_id')->where('validacion', 1)->get();
        return $this->hasMany(Comentario::class)
            ->join('users', 'users.id', '=', 'comentarios.user_id')
            ->where('validacion', 1)->select('users.name', 'users.lastnameP', 'users.lastnameM', 'comentarios.comentario', 'comentarios.created_at')
            ->get();
    }

    // Obtener
    public function register()
    {
        // Una publicacion puede tener multiples comentarios
        // return $this->hasMany(Comentario::class)->join('users', 'users.id', '=', 'comentarios.user_id')->where('validacion', 1)->get();
        return $this->hasMany(Participante::class)
            ->join('users', 'users.id', '=', 'comentarios.user_id')
            ->where('validacion', 1)
            ->select('users.name', 'users.lastnameP', 'users.lastnameM', 'comentarios.comentario', 'comentarios.created_at')
            ->get();
    }

    // Función de likes
    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    // Revisar si ya tiene like
    public function checkLike(?User $users)
    {
        if ($users) {
            return $this->likes->contains('user_id', $users->id);
        }
        return false;
    }
}
