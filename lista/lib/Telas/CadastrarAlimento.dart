import 'package:flutter/material.dart';
import 'package:lista/Telas/Lista1.dart';

class CadastrarProduto extends StatelessWidget {
  const CadastrarProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text('Editar produto'),
          leading: IconButton(onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Lista()));
          }, icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon:const  Icon(Icons.check),),IconButton(onPressed: (){}, icon:const Icon(Icons.delete))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                  labelText: 'Nome do Alimento',
                          labelStyle:const TextStyle(color: Colors.white),
                          suffix:const Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.only(right: 200, left: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                      labelText: 'Quantidade',
                      labelStyle:const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, left: 20, top: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                      labelText: 'Preco',
                      labelStyle:const TextStyle(color: Colors.white),
                    ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 370),
                    child: Image.asset('assets/fotinha.png', height: 300,),
                  )
          ],
        ),
      ),
    );
  }
}