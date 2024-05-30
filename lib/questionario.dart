import 'package:flutter/material.dart';
import 'package:projetoperguntas2/questao.dart';
import 'package:projetoperguntas2/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
    as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          String textoResp = resp['texto']?.toString() ?? 'No Text';
          String pontuacaoStr = resp['pontuacao']?.toString() ?? '0';

          int? pontuacao = int.tryParse(pontuacaoStr);
          if (pontuacao == null) {
            return Container(child: Text('Invalid score'));
          }

          return Resposta(
            textoResp,
                () => responder(pontuacao),
          );
        }).toList(),
      ],
    );


  }
}
