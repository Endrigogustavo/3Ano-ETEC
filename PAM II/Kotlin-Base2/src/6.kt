package funcoes

inline fun <T> executarComLog(nomeFuncao: String, funcao: () -> T): T {
    println("Entrando no método $nomeFuncao")
    try {
        return funcao()
    }finally {
        println("Método $nomeFuncao finalizado")
    }
}

fun soma(a: Int, b: Int): Int{
    return a + b
}

fun main(args: Array<String>){
    val resultado = executarComLog("somar"){
        soma(4,5)
    }

    println(resultado)
}