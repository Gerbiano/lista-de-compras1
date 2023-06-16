import 'package:flutter/material.dart';
import 'package:lista/Telas/cadastro.dart';

class Login extends StatelessWidget {
   Login({super.key});
  final formKey = GlobalKey<FormState>();
  String nome = "";
  String senha = "";
  static const String emptyError = "Campo obrigatório";
  static const String lengthError = "Máximo 30 caracteres";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 60, 60, 60),
        body: Form(
          key: formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/fotinha.png',
                            height: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            left: 20,
                          ),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Entrar',
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 30, left: 15, right: 15),
                          child: TextFormField(
                            
                              autofocus: true,
                              keyboardType: TextInputType.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  labelText: 'Nome de usuário ou email',
                                  labelStyle: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 15, right: 15),
                          child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              keyboardType: TextInputType.name,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 25, left: 10, right: 25),
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: ((value) {})),
                              const Text(
                                'Lembre de mim',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 11),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 110),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Esqueci minha senha',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: SizedBox(
                            width: 280,
                            height: 39,
                            child: ElevatedButton(
                              child: Text(
                                'Entrar',
                                style: TextStyle(fontSize: 17),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  side:
                                      BorderSide(color: Colors.white, width: 1.0),
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 00, 00)),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Novo aqui? ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                                  },
                                  child: const Text(
                                    'Crie sua conta',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 00, 00),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ]),
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
