import 'package:flutter/material.dart';
import 'package:listinha/telas/principal.dart';

class Despesas extends StatelessWidget {
  const Despesas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('kfdkdjf'),
        ),
        body: Container(
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.person_add)),
        ),
      ),
    );
  }
}
