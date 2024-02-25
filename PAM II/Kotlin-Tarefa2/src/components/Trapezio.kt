package components

import java.util.*

fun Trapezio(){
    val input = Scanner(System.`in`)
    println("Digite a base maior")
    var BaseMaior = input.nextDouble()
    println("Digite a base menor")
    var BaseMenor = input.nextDouble()
    println("Digite a altura")
    var Altura = input.nextDouble()
    var Result = ((BaseMaior + BaseMenor) / 2) * Altura
    println("A area é $Result")
}