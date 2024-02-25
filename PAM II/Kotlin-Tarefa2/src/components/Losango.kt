package components

import java.util.*

fun Losango(){
    val input = Scanner(System.`in`)
    println("Digite a primeira diagonal")
    var Diagonal1 = input.nextDouble()
    println("Digite a segunda diagonal")
    var Diagonal2 = input.nextDouble()
    var Result = (Diagonal1 * Diagonal2) / 2
    println("A area é $Result")
}