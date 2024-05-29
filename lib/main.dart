import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetoperguntas2/questao.dart';

main() {
 runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
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
            Questao(perguntas[_perguntaSelecionada]),
            FilledButton(onPressed: _responder, child: Text('Resposta 1')),
            FilledButton(onPressed: _responder, child: Text('Resposta 2')),
            FilledButton(onPressed: _responder, child: Text('Resposta 3'))
          ],
        ),
      ),
    );
  }
}