// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String login = '';
  String senha = '';

  Widget _body() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), label: Text('Login')),
                      onChanged: (value) {
                        login = value;
                      },
                    ),
                    Container(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Password')),
                      onChanged: (value) {
                        senha = value;
                      },
                    ),
                    Container(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          validaLogin(context, login, senha);
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              Color.fromARGB(255, 46, 68, 100)),
                        ),
                        child: Text(
                          'Logar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   actions: [SwithTheme()],
        // ),
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/background.avif',
            fit: BoxFit.cover,
          ),
        ),
        _body(),
      ],
    ));
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
