import 'package:flutter/material.dart';

class Listinha extends StatelessWidget {
  Listinha({super.key});
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    'frutas',
    'verduras',
    'bebidas',
    'carnes',
    'higiene pessoal',
    'importados',
    'sem categoria'
  ];
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Text('Minha lista'),
        ),
        body: Column(
          children: [
            ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(),
                  title: Text('jknewfjklekjp'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
