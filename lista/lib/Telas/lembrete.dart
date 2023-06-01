import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista/Telas/Principal.dart';

class Lembretes extends StatelessWidget {
  Lembretes({super.key});
  String minhalista = 'Lista1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Lembretes'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                tileColor: Colors.redAccent,
                value: 'List',
                groupValue: minhalista,
                onChanged: (value) {
                  minhalista = value.toString();
                },
                title: Center(
                  child: Text(
                    'Fazer Compras Lista 02',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                subtitle: Center(
                  child: Text('10/05',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.add_alert),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                tileColor: Colors.redAccent,
                value: 'List',
                groupValue: minhalista,
                onChanged: (value) {
                  minhalista = value.toString();
                },
                title: Center(
                  child: Text(
                    'Fazer Compras Lista 02',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                subtitle: Center(
                  child: Text('10/05',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.add_alert),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                tileColor: Colors.redAccent,
                value: true,
                groupValue: minhalista,
                onChanged: (value) {
                  minhalista = value.toString();
                },
                title: Center(
                  child: Text(
                    'Fazer Compras Lista 02',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                subtitle: Center(
                  child: Text('10/05',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.add_alert),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.alarm,
            size: 30,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
