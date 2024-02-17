fun variaveis(){
        //Inteiros
        val n1: Byte = 127
        val n2: Short = 36284.toShort()
        val n3: Int = 2_147_483_647
        val n4: Long = 9_223_372_036_325_943_432

        //Reais
        val n5: Float = 3.54F
        val n6: Double = 3.14

        //Tipo de Caracteres
        val char: Char = '?'

        //Tipo Boolean
        val boolean: Boolean = true

        //Prints
        println(listOf(n1,n2,n3,n4,n5,n6, char, boolean))
        println(2 is Int)
        //println(32523513 is Long)
        println(1.0 is Double)

        //Tudo é objeto
        println(10.dec())

        println("\n")
        println("Conta")

        var a: Int
        var b = 2
        a = 10
        print(a+b)
    }

