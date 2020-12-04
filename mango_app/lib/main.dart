import 'package:Mango/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MangoApp());
}

class MangoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        fontFamily: 'BalooTammudu2',
        // primaryColor: HexColor('#3D348B'),
        colorScheme: ColorScheme(
            primary: HexColor('#3D348B'),
            primaryVariant: Colors.black,
            secondary: Colors.black,
            secondaryVariant: Colors.black,
            surface: Colors.black,
            background: Colors.black,
            error: Colors.black,
            onPrimary: Colors.black,
            onSecondary: Colors.black,
            onSurface: HexColor('#F7B801'),
            onBackground: Colors.black,
            onError: Colors.black,
            brightness: Brightness.light),
      ),
    );
  }
}
