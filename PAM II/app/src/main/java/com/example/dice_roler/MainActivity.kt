package com.example.dice_roler

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.dice_roler.ui.theme.DiceRolerTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            DiceRolerTheme {
                // A surface container using the 'background' color from the theme
                    DiceRollerApp()
                }
            }
        }
    }


@Preview
@Composable
fun DiceRollerApp() {
    //Enviando parametros de modificação
    DiceWithButtonAndImage(modifier = Modifier
        //Ocupa a tela inteira
        .fillMaxSize()
        //Alinhamento dos itens na tela
        .wrapContentSize(Alignment.Center))
}

@Composable
fun DiceWithButtonAndImage(modifier: Modifier = Modifier) {
    //Variaveis de inicialização do dado no numero 1
    var result by remember { mutableStateOf(1) }

    //Laço de repetição para definir o numero do dado
    val imageResource = when (result) {
        1 -> R.drawable.dice_1
        2 -> R.drawable.dice_2
        3 -> R.drawable.dice_3
        4 -> R.drawable.dice_4
        5 -> R.drawable.dice_5
        else -> R.drawable.dice_6
    }

    //Criação da tela
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        //Imagem do dado que em baixo mostra o numero
        Image(painter = painterResource(imageResource), contentDescription = result.toString())

        //Botao que tem como função dar um numero aleatorio
        Button(onClick = { result = (1..6).random() }) {
            //texto que envia o numero para o when para a "Roll"
            Text(stringResource(R.string.roll))
        }
    }
}

