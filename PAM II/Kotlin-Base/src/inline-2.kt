inline fun <T> execultarComLog(nomeFuncao: String, funcao: () -> T): T {
    println("Execultando $nomeFuncao")
    try {
        return funcao()
    } finally {
        println("Método $nomeFuncao finalizado")
    }
}

fun somar(a: Int, b: Int): Int {
    return a + b
}

fun inline2 (){
    val resultado = execultarComLog("Somar"){
        somar(4,5)
    }
    println(resultado)
}