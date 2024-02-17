fun decisao(){
    val BomHumor = true
    print("Hoje estou ${if (BomHumor) "feliz" else "chateado"} ")
    print("\n")
    print("\n")


    val nota = 6.3
    if(nota >= 7.0){
        println("Aprovado")
    }
    else{
        println("Reprovado")
    }

    print("\n")


    println("Validador")

    val num1 = 2
    val num2 = 3
    val maior = if (num1 > num2){
        println("Processando...")
        num1
    }else{
        println("Processando...")
        num2
    }
    println("O maior é $maior")

    print("\n")


    val nota2 = 9
    if(nota2 in 9 .. 10){
        println("Fantastico")
    }
    else if(nota2 in 7 .. 8)
    {
        println("Parabens")
    }
    else if(nota2 in 4 .. 6)
    {
        println("Foi de arrasta para cima")
    }
    else if(nota2 in 0 .. 3)
    {
        println("Te vejo no céu irmao")
    }
    else
    {
        println("nota invalida")
    }



}