import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*AppBar
      appBar: AppBar(
        title: Text('Bienvenido a After'),
        elevation: 15,
      ),

      //*?Cambiar pantalla
      body: PageView(
        children: [
          CustomScreen(color: Colors.blue),
          CustomScreen(color: Colors.blue),
        ],
      ),

      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Estoy Aburrido'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Quiero Trabajar'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('AFTER'),
      ),
    );
  }
}
