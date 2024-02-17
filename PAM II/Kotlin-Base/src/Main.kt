import java.util.*

fun main() {

    println("1-Variaveis")
    println("2-Parametros")
    println("3-Retorno")
    println("4-Vetor")
    println("5-Decisao")
    println("6-Notação")
    println("7-Laços de Repetição")
    println("8-Índice")
    println("9-Matriz")
    println("10-Inline")
    println("11-Inline parte 2")
    println("12-Duas funções")
    println("-1 Para Sair")

    println("--------------------")
println("Selecione um numero")




        var Num = 0
    while(Num != -1) {
        
       // val input = Scanner(System.`in`)
       // var Num = input.nextInt()

        val line = readLine() ?: "0"
        Num = line.toIntOrNull() ?: 0

        when (Num) {
            1 -> variaveis()
            2 -> ParametrosSoma(4, 5)
            3 -> println(ReturnSoma(11))
            4 -> Vetor()
            5 -> decisao()
            6 -> notação()
            7 -> repetição()
            8 -> indice()
            9 -> matriz()
            10 -> inline()
            11 -> inline2()
            12 -> duasfuncoes()
            in -1..12 -> print("Finalizando")
            else -> print("Numero Invalido")
        }
    }
}
