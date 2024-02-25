package components

import java.util.*
import kotlin.math.pow

fun Circulo(){
    val input = Scanner(System.`in`)
    println("Digite a raio")
    var raio = input.nextFloat()
    var Result = Math.PI * raio.pow(2)
    println("A area é $Result")
}