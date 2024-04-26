package com.example.crud_kotlin.RoomBD

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Query
import androidx.room.Upsert

@Dao
interface PessoaDao {

    @Upsert
    suspend fun updatePessoa(pessoa: Pessoa)

    @Delete
    suspend fun deletePessoa(pessoa: Pessoa)

    @Query("SELECT * FROM pessoa")
    fun getAllPessoa()
}