fun matriz(){
    loop@for (i in 1 ..15){
        for(j in 1 ..15){
            if (i == 2 && j == 9) break@loop
            println("$i $j")
        }
    }
    println("Fim")
}