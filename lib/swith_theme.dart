//  ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class SwithTheme extends StatelessWidget {
  const SwithTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.appControllerInstance.isDarkTheme,
      onChanged: (value) {
        AppController.appControllerInstance.changeTheme();
      },
      activeColor: Color.fromARGB(255, 255, 255, 255),
      inactiveThumbColor: Colors.black,
    );
  }
}
