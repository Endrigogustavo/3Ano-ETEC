package com.example.crud_kotlin.RoomBD

import androidx.room.Database

@Database(
    entities = [Pessoa::class],
    version = 1
)
abstract class PessoaDataBase {
    abstract fun pessoaDao(): PessoaDao
}

