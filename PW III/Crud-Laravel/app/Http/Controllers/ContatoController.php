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

    public function editar($id){
        $contato = Contato::find($id);
        return view('editar')->with("contato", $contato);
    }

    public function atualizar(Request $req, $id){
        $contato = Contato::find($id);
        $contato->update(
        [
            "Email" => $req-> Email,
            "Nome" => $req-> Nome,
            "Nascimento" => $req-> Nascimento,
            "Senha" => $req-> Senha,
            "Telefone" => $req-> Telefone,
            "Origem" => $req-> Origem,
            "Feedback" => $req-> Feedback
        ]
        );
        
        return redirect()->back();
    }

    public function excluir(Request $req, $id){
        $contato = Contato::find($id);
        $contato->delete();
        return redirect()->back();
    }
}
