fun repetição(){
    val nota = 4
    when(nota){
        10,9 -> print("Fantastico")
        8,7-> print("Fez o minimo")
        6,5,4 -> print("Te vejo no céu irmao")
        in 3 .. 6 -> print("Até a proxima")
        else -> print("Nota invalida")
    }



    print("\n\n")



    var contador = 1
    while(contador <= 10){
        print(contador)
        contador++
    }

    print("\n\n")


    //For
    for(i in 10 downTo 1){
        println("i = $i")
    }


    print("\n\n")


    //For com passo
    for(i in 0 .. 100 step 5){
        println("i = $i")
    }

    for(i in 100 downTo  0 step 5){
        println("i = $i")
    }


    print("\n\n")


    //Break
    for(i in 1 .. 10){
        if(i == 5){
            break
        }
        println("Atual: $i")
    }


    print("\n\n")

    var opcao = 0
    while(opcao != -1){
        val line = readLine() ?: "0"
        opcao = line.toIntOrNull() ?: 0
        println("Você escolheu $opcao")
    }
    println("Até")
}