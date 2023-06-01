import 'package:flutter/material.dart';
import 'package:lista/Telas/Lista1.dart';

class CadastrarProduto extends StatelessWidget {
  const CadastrarProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Editar produto'),
          leading: IconButton(onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Lista()));
          }, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.check),),IconButton(onPressed: (){}, icon: Icon(Icons.delete))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                  labelText: 'Nome do Alimento',
                          labelStyle: TextStyle(color: Colors.white),
                          suffix: Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.only(right: 200, left: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                      labelText: 'Quantidade',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, left: 20, top: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                      labelText: 'Preco',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 370),
                    child: Image.asset('assets/fotinha.png', height: 300,),
                  )
          ],
        ),
      ),
    );
  }
}
/*Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.network(
                    'https://th.bing.com/th/id/R.519e9dcdb4c244687eccfd2d5132f1d5?rik=Z3Hu5bgEXDwVZg&riu=http%3a%2f%2fstatic.mobilelocalnews.com%2fmln-ui%2fimg%2fbranding%2fNavigaMobileLogo.png&ehk=ON6W%2fswzBK86QhwuTYi%2bUcF7N5lAqNSbL6bCPkHN8z0%3d&risl=&pid=ImgRaw&r=0',
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    autofocus: true,
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: 'Nome do Alimento',
                        labelStyle: TextStyle(color: Colors.white),
                        suffix: Icon(
                          Icons.mic,
                          color: Colors.white,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, left: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Quantidade',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, left: 20, top: 20),
                  child: TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Preco',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),*/