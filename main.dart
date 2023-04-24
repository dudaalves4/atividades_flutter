import 'package:flutter/material.dart';

void main() {
  runApp(AulaGrupoUm());
}

class AulaGrupoUm extends StatefulWidget {

 @override
 State<AulaGrupoUm> createState()=> _AulaGrupoUmState();
 }
class _AulaGrupoUmState extends State<AulaGrupoUm>{


var contador = 0;
final questoes = [
  "Tem animal de estimação?",
  "Prefere azul ou amarelo?",
  "Usa mais wpp ou instagram?",
  "Seu animal favorito?"
];

void clique(){
  setState(() {
    contador: contador++;
  });
 print (contador);
}

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar
        (
          title: Text("Meu primeiro aplicativo"),
      ),
         body: Column(
          children: [
            Text (questoes[contador]),
          ElevatedButton(
            onPressed: clique,
            child: Text('Salvar'),
            ),
            ElevatedButton(
              onPressed: (){
                print("outra função");
              },
              child: Text('Enviar'),
              ),
              ElevatedButton(
              onPressed: (){
              print("outra função");
              } ,
              child: Text('Cancelar')),
              ElevatedButton(
              onPressed: () => print("Funçaõ arrow"),
              child: Text('Clique Aqui')),
             

         ],)  ),
      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
