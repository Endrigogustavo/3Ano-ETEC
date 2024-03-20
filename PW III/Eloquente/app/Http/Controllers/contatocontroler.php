<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class contatocontroler extends Controller
{
    public function index(Request $req){
            $contato = Contato::all();
            return view('welcome')->with("contato", $contato);
    }

    public function adicionar(Request $req){
        $contato = new Contato;
        $contato->nome = $req->$nome;
        $contato->telefone = $req->$telefone;
        $contato->email = $req->$email;
        $contato->save();
        return redirect()->back();
    }
}
