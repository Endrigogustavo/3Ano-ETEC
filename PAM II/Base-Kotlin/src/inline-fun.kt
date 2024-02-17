inline fun transação(funcao: () -> Unit){
    println("Abrindo...")
    try {
        funcao()
    } finally {
        println("Fechando")
    }
}

fun inline(){
    transação {
        println("Executando SQL 1...")
        println("Executando SQL 2...")
        println("Executando SQL 3...")
    }
}