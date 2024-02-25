package components

import java.util.*

fun Retangulo(){
    val input = Scanner(System.`in`)
    println("Digite a base do retangulo")
    var Base = input.nextDouble()
    println("Digite a altura do retangulo")
    var Altura = input.nextDouble()
    var Result = Base*Altura
    println("A area é $Result")
}