import 'package:cara_ou_coroa/coin_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _caraCoroa(){
    var options = ['cara', 'coroa'];
    var num = Random().nextInt(options.length);
    var moeda = options[num];

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Coin(valor: moeda))
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF61bd8c),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Image.asset('images/logo.png'),
            //SizedBox(height: 70),
            GestureDetector(
                  onTap: _caraCoroa,
                  child: Image.asset('images/botao_jogar.png')
              )
          ],
        ),
      ),
    );
  }
}
