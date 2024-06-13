//  ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/contador.dart';
import 'package:ola_mundo/login_insta.dart';
import 'package:ola_mundo/login_page.dart';

class InicialWidget extends StatelessWidget {
  const InicialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.appControllerInstance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: AppController.appControllerInstance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginInsta(),
            '/contador': (context) => Contador(),
          },
        );
      },
    );
  }
}
