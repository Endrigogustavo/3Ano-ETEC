<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


<div class="container">
  <div class="row">
    <div class="col">
    <nav class="navbar bg-primary" data-bs-theme="dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
    </div>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
</ul>
</div>
</nav>



<br>
    <h2>Editar Usuario - Agendamento e etc</h2>
    <br>
    <form method="POST" action="/atualizar/{{$contato->id}}">
            @csrf
            <div class="form-group mb-2">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="Email" value="{{$contato->Email}}" placeholder="E-mail">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Nome</label>
                <input type="text" class="form-control" name="Nome" value="{{$contato->Nome}}" placeholder="Telefone">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Nascimento</label>
                <input type="date" class="form-control" name="Nascimento" value="{{$contato->Nascimento}}" placeholder="Telefone">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Senha</label>
                <input type="text" class="form-control" name="Senha" value="{{$contato->Senha}}" placeholder="Nome">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Telefone</label>
                <input type="text" class="form-control" name="Telefone" value="{{$contato->Telefone}}" placeholder="Telefone">
            </div>
            <button type="submit" class="btn btn-primary">Atualizar</button>
        </form>



    </div>
  </div>
</div>
</body>
</html>