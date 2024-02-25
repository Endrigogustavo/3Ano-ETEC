package components

import java.util.*
import kotlin.math.*

fun TipoTriangulo(){
    println("1-Equilatero \n 2-Isoceles \n 3-Escaleno")
    val input = Scanner(System.`in`)
    var Num = input.nextInt()
    when (Num) {
        1 -> TrianguloEquilatero()
        2 -> TrianguloIsoceles()
        3 -> TrianguloEscaleno()
    }

}

fun TrianguloEquilatero(){
    val input = Scanner(System.`in`)
    println("Digite o lado do triangulo")
    var LadoTri = input.nextDouble()
    var Result = (sqrt(3.0) / 4) * LadoTri.pow(2)
    println("A area é $Result")
}

fun TrianguloIsoceles(){
    val input = Scanner(System.`in`)
    println("Digite a base do triangulo")
    var Base = input.nextDouble()
    println("Digite a altura do triangulo")
    var Altura = input.nextDouble()
    var Result = (Base*Altura) / 2
    println("A area é $Result")
}
fun TrianguloEscaleno(){
    //"Fórmula de Heron"
    val input = Scanner(System.`in`)
    println("Digite o lado 1 do triangulo")
    var LadoTri1 = input.nextDouble()
    println("Digite o lado 2 do triangulo")
    var LadoTri2 = input.nextDouble()
    println("Digite o lado 3 do triangulo")
    var LadoTri3 = input.nextDouble()
    var SemiPerimetro = (LadoTri1 + LadoTri2 + LadoTri3) / 2
    var Result = sqrt(SemiPerimetro * (SemiPerimetro - LadoTri1) * (SemiPerimetro - LadoTri2) * (SemiPerimetro - LadoTri3))
    println("Semiperimetro é $SemiPerimetro")
    println("A area é $Result")
}
