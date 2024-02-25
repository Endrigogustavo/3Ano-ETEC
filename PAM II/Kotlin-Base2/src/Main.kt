import ordenar as ordenar1

fun main(args: Array<String>){
    for (n in ordenar1(38, 3, 456, 8, 51, 1, 88, 73)){
        println("$n")
    }
}

fun ordenar(vararg numeros: Int): IntArray{
    return numeros.sortedArray()
}