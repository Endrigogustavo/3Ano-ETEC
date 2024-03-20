<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Contato;

class ContatoController extends Controller
{
    public function index(Request $req){
            $contato = Contato::all();
            return view('welcome')->with("contato", $contato);
    }

    public function adicionar(Request $req){
        $contato = new Contato;
        $contato->Email = $req->$Email;
        $contato->Nome = $req->$Nome;
        $contato->Nascimento = $req->$Nascimento;
        $contato->Senha = $req->$Senha;
        $contato->Telefone = $req->$Telefone;
        $contato->Origem = $req->$Origem;
        $contato->Feadback = $req->$Feadback;
        $contato->save();
        return redirect()->back();
    }
}
