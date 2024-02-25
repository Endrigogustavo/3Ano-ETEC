import components.*
import java.util.*

fun main() {

    println("1-Area Retangulo")
    println("2-Area Triangulo")
    println("3-Area Circulo")
    println("4-Area Losango")
    println("5-Area Trapezio")

    println("--------------------")
    println("Selecione um numero")

         val input = Scanner(System.`in`)
         var Num = input.nextInt()

        when (Num) {
            1 -> Retangulo()
            2 -> TipoTriangulo()
            3 -> Circulo()
            4 -> Losango()
            5 -> Trapezio()
            in -1..5 -> print("Finalizando")
            else -> print("Numero Invalido")
        }

}