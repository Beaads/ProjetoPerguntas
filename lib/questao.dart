import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  Questao(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
