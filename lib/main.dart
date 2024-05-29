import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
 runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual é seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            FilledButton(onPressed: responder, child: Text('Resposta 1')),
            FilledButton(onPressed: responder, child: Text('Resposta 2')),
            FilledButton(onPressed: responder, child: Text('Resposta 3'))
          ],
        ),
      ),
    );
  }
}