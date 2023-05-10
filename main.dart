import 'package:flutter/material.dart';
import './botao.dart';
import 'textos.dart';

void main() {
  runApp(AulaGrupoUm());
}

class AulaGrupoUm extends StatefulWidget {
  @override
  State<AulaGrupoUm> createState() => _AulaGrupoUmState();
}

class _AulaGrupoUmState extends State<AulaGrupoUm> {
  var contador = 0;
  final questoes = [
    "Tem animal de estimação?",
    "Prefere azul ou amarelo?",
    "Usa mais wpp ou instagram?",
    "Seu animal favorito?"
  ];

  void clique() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Meu primeiro aplicativo"),
          ),
          body: Column(
            children: [
              Perguntas(questoes[contador]),
              ElevatedButton(
                onPressed: clique,
                child: Text('prox pergunta'),
              ),
              Margin(),
              ElevatedButton(
                onPressed: () {
                  print("função anonima");
                },
                child: Text('Função anônima'),
              ),
              Margin(),
              ElevatedButton(
                  onPressed: () => print("Funçaõ arrow"),
                  child: Text('Função arrow')),
              Margin(),
              Botao("Botao componente")
            ],
          )),
    );
  }
}
