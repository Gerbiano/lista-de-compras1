import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista/Telas/CadastrarAlimento.dart';
import 'package:lista/Telas/Principal.dart';

class Listaa extends StatelessWidget {
  Listaa({super.key});

  final dropValue = ValueNotifier('');
  final dropOpcoes = ['mklpkm', 'ijiojio', 'niojiók', 'huihcs'];
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Geral"), value: "Geral"),
    DropdownMenuItem(child: Text("Bazar e limpeza"), value: "Canada"),
    DropdownMenuItem(child: Text("Bebidas"), value: "Brazil"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Comidas prontas"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
    DropdownMenuItem(child: Text("Carnes"), value: "England"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Minha Lista'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    size: 30,
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton(
                  value: "Geral",
                  items: menuItems,
                  onChanged: (Object? value) {},
                  isExpanded: true,
                ),
              ),
            ),
            ListView.builder(
                itemCount: 20,
                itemBuilder: ((context, index) {
                  return ListTile(
                   
                    title: Text('Alimento $index'),
                    
                  );
                }))
          ],
        ),
      ),
    );
  }
}


