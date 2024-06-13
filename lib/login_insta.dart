// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:ola_mundo/swith_theme.dart';

class LoginInsta extends StatefulWidget {
  const LoginInsta({super.key});

  @override
  State<LoginInsta> createState() => _LoginInstaState();
}

class _LoginInstaState extends State<LoginInsta> {
  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/insta.png',
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(25),
                    child: Material(
                      color: Colors.white,
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              label: Text('Login'),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              login = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text('Senha'),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                          Container(
                            height: 30,
                          ),
                          // Capturar click
                          InkWell(
                            onTap: () {
                              validaLogin(context, login, password);
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.blue,
                              ),
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(
                                            255, 187, 187, 187))),
                              ),
                              Text('    OU    '),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(
                                            255, 187, 187, 187))),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                          ),
                          Image.asset('assets/images/entrarFacebook.png'),
                          Container(
                            height: 30,
                          ),
                          Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                    const Color.fromARGB(255, 126, 126, 126)),
                          ),
                          Container(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Não tem uma conta? ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 126, 126, 126),
                                    fontSize: 16),
                              ),
                              Text(
                                ' Cadastre-se',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void validaLogin(context, login, senha) {
  if (login == 'j' && senha == '1') {
    // **************Navegação com rotas****************
    Navigator.of(context).pushReplacementNamed('/contador');

    // **************Navegação manual****************
    // Mantem esse componente e abre o outro por cima, criando um botão de voltar;
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => Contador()));

    // Descarta esse elemento e abre o outro, sem a opção de
    // Navigator.of(context)
    //     .pushReplacement(MaterialPageRoute(builder: (context) => Contador()));
  } else {
    showToast(context, 'Login inválido');
  }
}

void showToast(BuildContext context, String texto) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(texto),
      action:
          SnackBarAction(label: '', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
