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
    <form action="/editar/{{$Contato->id}}" method ="post">
        @csrf
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" name="Email" class="form-control" value="{{$contato->Email}}" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Nome</label>
    <input type="text" name="Nome" class="form-control" value="{{$contato->Nome}}" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Nascimento</label>
    <input type="date" name="Nascimento" class="form-control" value="{{$contato->Nascimento}}" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Senha</label>
    <input type="password" name="Senha" class="form-control"value="{{$contato->Senha}}" id="exampleInputPassword1">
  </div>
<div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Telefone</label>
    <input type="text" name="Telefone" class="form-control" value="{{$contato->Telefone}}" id="exampleInputPassword1">
  </div>

  <label for="exampleInputPassword1" class="form-label">Origem</label>
<select class="form-select" name="Origem" aria-label="Default select example">
  <option selected>Celular</option>
  <option value="1">Fixo</option>
  <option value="2">Telefone</option>
  <option value="3">Outros</option>
</select>
<br>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Feadback</label>
  <textarea class="form-control" name="Feedback" value="{{$contato->Feadback}}" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
<br>
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>

    </div>
  </div>
</div>
</body>
</html>