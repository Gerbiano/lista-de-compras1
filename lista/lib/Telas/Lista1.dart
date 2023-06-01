import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista/Telas/CadastrarAlimento.dart';
import 'package:lista/Telas/Principal.dart';

class Lista extends StatelessWidget {
  Lista({super.key});

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          title: Text('Minha Lista'),
          backgroundColor: Colors.red[900],
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red[900],

                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10 ),
                  child: TextField(
                    autofocus: true,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        labelText: '',
                        labelStyle: TextStyle(color: Colors.white),
                        suffix: Icon(
                          Icons.mic,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 20, left: 20, bottom: 10),
                  child: DropdownButton(
                    value: "Geral",
                    items: menuItems,
                    onChanged: (Object? value) {},
                    isExpanded: true,
                  ),
                ),
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastrarProduto()));
                },
                secondary: CircleAvatar(),
                title: Text(
                  'Alimento',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
