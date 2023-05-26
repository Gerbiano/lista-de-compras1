import 'package:flutter/material.dart';
import 'package:listinha/telas/principal.dart';

class Lembretes extends StatelessWidget {
  const Lembretes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text(
            "Lembretes",
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                  SizedBox(
                    width: 50,
                  ),
                  Text('kjdsfklfdkjlfdjk'),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                  SizedBox(
                    width: 50,
                  ),
                  Text('kjdsfklfdkjlfdjk'),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                  SizedBox(
                    width: 50,
                  ),
                  Text('kjdsfklfdkjlfdjk'),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                  SizedBox(
                    width: 50,
                  ),
                  Text('kjdsfklfdkjlfdjk'),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Icon(Icons.notifications),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red[900],
          child: const Icon(
            Icons.add_alarm,
          ),
        ),
      ),
    );
  }
}
