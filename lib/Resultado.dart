import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultaadoState createState() => _ResultaadoState();
}

class _ResultaadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    // print(widget.valor);
    var caminhoImagem;
    if(widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      // backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
