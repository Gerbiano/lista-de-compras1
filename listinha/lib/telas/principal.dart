import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
   Principal({super.key});
  final tit = "Lista";
  final titulo = "Best Shopping";
  List<BottomNavigationBarItem> itens = [
    BottomNavigationBarItem(label: 'carrinho',icon: Icon(Icons.shopping_cart_sharp)),
    BottomNavigationBarItem(label:'Total', icon: Icon(Icons.calculate)),
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tit,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text("Best Shopping"),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.person_add,
                size: 28.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children:const [
                        Padding(
                          padding:  EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.amber,
                          ),
                        ),
                        Text("Pesquisar")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children:const [
                        Padding(
                          padding:  EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.share,
                            color: Colors.amber,
                          ),
                        ),
                        Text("Compartilhar")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children:const [
                        Padding(
                          padding:  EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.shape_line,
                            color: Colors.amber,
                          ),
                        ),
                        Text("Avaliar")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children:const [
                        Padding(
                          padding:  EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.save_alt,
                            color: Colors.amber,
                          ),
                        ),
                        Text("Salvar Historico"),
                      ],
                    ),
                  ),
                ],
                child: const Icon(
                  Icons.more_vert,
                  size: 28.0,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children:const [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text('Usuario'),
                accountEmail: Text('usuario@gmail.com'),
                
              
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Minhas listas'),
              ),
              ListTile(
                leading: Icon(Icons.graphic_eq),
                title: Text('Minhas despesas'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Listas Recebidas'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Historico de Compras'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Sobre nois'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Lembretes'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Best Premium'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Lixeira'),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Configuracoes'),
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children:const [
                  Text('Bem Vinda(o)', textScaleFactor:2.3, style: TextStyle(color: Colors.white),),
                  Text('Crie sua primeira lista personalizada', textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Text('Clique no "+" para iniciar', textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
                    
                  )
                  
                ],
              ),
            ),
          ),
        ),
        

        bottomNavigationBar:BottomNavigationBar(items: itens) ,
      ),
    );
  }
}
