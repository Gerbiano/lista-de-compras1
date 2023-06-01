import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lista/Telas/Principal.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Despesas extends StatelessWidget {
  Despesas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 46, 46, 46),
          appBar: AppBar(
            backgroundColor: Colors.red[900],
            title: Text('Minhas despesas'),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Principal()));
              },
              icon: Icon(Icons.arrow_back),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.graphic_eq),
              )
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text('Data de Inicio - Data de Fim'),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Total',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'RS 108,58',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              TabBar(tabs: [
                Tab(
                  text: 'Categoria',
                ),
                Tab(
                  text: 'Lojas',
                ),
                Tab(
                  text: 'Produtos',
                ),
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    color: Colors.red,
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.3,
                      minChildSize: 0.3,
                      maxChildSize: 0.5,
                      builder: (context, scrollController) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListView.separated(
                          controller: scrollController,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('item $index'),
                              trailing: Text('1$index%'),
                            );
                          },
                          separatorBuilder: (__, _) => const Divider(),
                          itemCount: 20,
                        ),
                        margin: EdgeInsets.only(right: 20, left: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.3,
                      minChildSize: 0.3,
                      maxChildSize: 0.5,
                      builder: (context, scrollController) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListView.separated(
                          controller: scrollController,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('item $index'),
                              trailing: Text('1$index%'),
                            );
                          },
                          separatorBuilder: (__, _) => const Divider(),
                          itemCount: 20,
                        ),
                        margin: EdgeInsets.only(right: 20, left: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.7,
                      maxChildSize: 0.9,
                      builder: (context, scrollController) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListView.separated(
                            controller: scrollController,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('item $index'),
                                ),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    'Item 2$index',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (__, _) => const Divider(),
                            itemCount: 20),
                        margin: EdgeInsets.only(right: 20, left: 20),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
