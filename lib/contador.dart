// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ola_mundo/swith_theme.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContadorState();
  }
}

class ContadorState extends State<Contador> {
  int num = 0;
  String user = 'Jander Alves';
  String email = 'jander@email.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture:
                    ClipOval(child: Image.asset('assets/images/user.jpeg')),
                accountName: Text(user),
                accountEmail: Text(email)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Pagina inicial'),
              onTap: () {
                print('Home');
              },
            ),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                subtitle: Text('Finallizar sessão'),
                onTap: () {
                  sair(context);
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(children: const [Text('Contador')]),
        actions: [SwithTheme()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$num',
                      style: const TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 54, 136, 244)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            num++;
                          });
                        },
                        child: const Text('Somar')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            num--;
                          });
                        },
                        onLongPress: () {
                          setState(() {
                            num = 0;
                          });
                        },
                        child: const Text('Subtrair'))
                  ],
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SwithTheme(),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

void sair(context) {
  Navigator.of(context).pushReplacementNamed('/');
}
