import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  Resultado(this.nota, this.quandorReiniciarQuestionario);

  final int nota;
  final void Function() quandorReiniciarQuestionario;

  String get fraseResultado {
    if (nota < 7) {
      return 'Parabens';
    } else if (nota < 15) {
      return 'Voce é bom';
    } else {
      return 'Impressionante';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FilledButton(
            onPressed: quandorReiniciarQuestionario,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.blue),
            ),
            child: const Text(
              'Reiniciar?',
              style: TextStyle(
                  fontSize: 18),
            ))
      ],
    );
  }
}
