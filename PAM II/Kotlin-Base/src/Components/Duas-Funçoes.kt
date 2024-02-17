fun duasfuncoes(){
    print("O menor valor é ${min(3,4)}")
}

fun min (a: Int, b: Int): Int{
    return if (a < b) a else b
}