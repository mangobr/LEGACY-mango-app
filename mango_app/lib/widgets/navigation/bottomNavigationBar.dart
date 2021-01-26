import 'package:flutter/material.dart';

class MangoBottomNavBar extends StatefulWidget {
  @override
  _MangoBottomNavBarState createState() => _MangoBottomNavBarState();
}

class _MangoBottomNavBarState extends State<MangoBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          title: Text('Início'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Pesquisa'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('Histórico'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_sharp),
          title: Text('Perfil'),
        ),
      ],
    );
  }
}
