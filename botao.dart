import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String texto;

  Botao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            print("botao componente");
          },
          child: Text(texto),
        ),
      ],
    );
  }
}
