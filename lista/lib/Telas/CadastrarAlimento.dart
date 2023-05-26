import 'package:flutter/material.dart';
import 'package:lista/Telas/listadealimento2.dart';

class CadastrarProduto extends StatelessWidget {
  const CadastrarProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Editar produto'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Listaa()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  autofocus: false,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Nome do Alimento',
                    labelStyle: TextStyle(color: Colors.white),
                    
                  ),
                 
                ),
              ),
              Image.network('https://i0.statig.com.br/bancodeimagens/78/pt/gs/78ptgsfeddfh638dkkzya5p3y.jpg', height: 100,)
              
            ],
          ),
        ),
      ),
    );
  }
}
