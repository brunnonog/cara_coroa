import 'package:cara_ou_coroa/home.dart';
import 'package:flutter/material.dart';

class Coin extends StatefulWidget {
  final String valor;
  const Coin({super.key, required this.valor});

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {

  @override
  Widget build(BuildContext context) {
    var imagem = 'images/moeda_cara.png';
    if (widget.valor == 'cara'){
      imagem = 'images/moeda_cara.png';
    }else{
      imagem = 'images/moeda_coroa.png';
    }

      return Scaffold(
      backgroundColor: Color(0xFF61bd8c),
      body: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagem),
          //SizedBox(height: 70),
          GestureDetector(
              onTap: (){
                Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                );
              },
              child: Image.asset('images/botao_voltar.png')
          )
        ],
      ),
      ),
    );
  }
}
