import 'package:flutter/material.dart';
import 'package:lista/Telas/Despesas.dart';
import 'package:lista/Telas/Lista1.dart';
import 'package:lista/Telas/lembrete.dart';

import 'package:lista/Telas/login.dart';

class Principal extends StatelessWidget {
  Principal({super.key});
  final tit = "Lista";
  final titulo = "Best Shopping";
  List<BottomNavigationBarItem> itens = [
    BottomNavigationBarItem(
        label: 'carrinho', icon: Icon(Icons.shopping_cart_sharp)),
    BottomNavigationBarItem(label: 'Total', icon: Icon(Icons.calculate)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tit,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 46, 46, 46),
          appBar: AppBar(
            title: Text(titulo),
            backgroundColor: Colors.red[900],
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.person_add,
                  size: 30,
                ),
              ),
              PopupMenuButton(
                iconSize: 30,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                        Text('Pesquisar')
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                        Text('Compartilhar')
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                        Text('Avaliar')
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                        Text('Salvar Historico')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          drawer: Builder(builder: (context) {
            return Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.red[900]),
                    accountName: Text('Usuario'),
                    accountEmail: Text('usuario.usuario@gmail.com'),
                    currentAccountPicture: CircleAvatar(),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Minhas Lista'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Minhas Despesas'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Despesas()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Lista Recebidas'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Historico de compras'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Sobre Nois'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Lembretes'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Lembretes()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Best Premium'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Lixeira'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Configuracoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_rounded),
                    title: Text('Sair'),
                  ),
                ],
              ),
            );
          }),
          body: Container(
            height: double.infinity,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Bem Vindo (a)',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            'Crie sua primeira lista personalizada',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: Text(
                    'Clique no "+" para iniciar',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Lista()));
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.red[900],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(items: itens),
        );
      }),
    );
  }
}
