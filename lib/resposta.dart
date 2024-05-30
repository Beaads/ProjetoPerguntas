import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final void Function() quandoSelecionado;
  final String texto;

  Resposta(
      this.texto,
      this.quandoSelecionado
      );

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: FilledButton(
          onPressed: quandoSelecionado,
          child: Text(texto),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
          ),),
    );
  }
}
