import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});
  final tit = "Lista";
  final titulo = "Best Shopping";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tit,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor:Colors.red[900],
              title: Text("Best Shopping"),
              leading: IconButton(onPressed: () {
                
              }, icon: const Icon(Icons.menu)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.person_add, size: 28.0,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.search, color: Colors.amber,),
                    ),
                    Text("Pesquisar")
                  ],
                ),
                ),
                PopupMenuItem(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.share, color: Colors.amber,),
                    ),
                    Text("Compartilhar")
                  ],
                ),
                ),
                PopupMenuItem(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.shape_line, color: Colors.amber,),
                    ),
                    Text("Avaliar")
                  ],
                ),
                ),
                PopupMenuItem(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.save_alt, color: Colors.amber,),
                    ),
                    Text("Salvar Historico"),
                  ],
                ),
                ),
              ],
              child: Icon(Icons.more_vert, size: 28.0,),),
            ),
          ],
          
          ),
      ),
    );
  }
}
