<?php

namespace App\Http\Livewire;

use Livewire\Component;

class LikeEvento extends Component
{
    public $evento;
    public $isLiked;
    public $likes;

    // Se ejecuta automatica
    public function mount($evento)
    {
        // Verifica si ya tiene o no
        $this->isLiked = $evento->checkLike(auth()->user());
        // el contador
        $this->likes = $evento->likes->count();
    }

    public function click()
    {
        if ($this->evento->checkLike(auth()->user())) {
            $this->evento->likes()->where('evento_id', $this->evento->id)->delete();
            $this->isLiked = false;
            $this->likes--;
        } else {
            $this->evento->likes()->create([
                'user_id' => auth()->user()->id
            ]);
            $this->isLiked = true;
            $this->likes++;
        }
    }

    public function render()
    {
        return view('livewire.like-evento');

    }
}
