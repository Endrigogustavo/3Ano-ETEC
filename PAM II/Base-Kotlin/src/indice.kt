fun indice(){
    val alunos = arrayListOf("André", "Carla", "Marcos")
    for ((indice, aluno) in alunos.withIndex()){
        println("$indice - $alunos \n")
    }
}