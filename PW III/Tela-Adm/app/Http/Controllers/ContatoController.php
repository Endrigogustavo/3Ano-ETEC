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
        $contato->Email = $req->input('Email');
        $contato->Nome = $req->input('Nome');
        $contato->Nascimento = $req->input('Nascimento');
        $contato->Senha = $req->input('Senha');
        $contato->Telefone = $req->input('Telefone');
        $contato->Origem = $req->input('Origem');
        $contato->Feedback = $req->input('Feedback'); // Corrigi o nome do campo para "Feedback"
    
    
        $contato->save();
        return redirect()->back();
    }
}
