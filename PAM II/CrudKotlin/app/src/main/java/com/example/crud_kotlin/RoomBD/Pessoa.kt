package com.example.crud_kotlin.RoomBD

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity
data class Pessoa(
    val nome: String,
    val telefone: String,

    @PrimaryKey(autoGenerate = true)
    val id: Int = 0
)
