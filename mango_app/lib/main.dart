import 'package:Mango/screens/auth/userRoles/roleSelection.dart';
import 'package:Mango/screens/auth/wellcomeScreen.dart';
import 'package:Mango/screens/core/history/history.dart';
import 'package:Mango/screens/home.dart';
import 'package:Mango/screens/auth/login.dart';
import 'package:Mango/screens/auth/signUp.dart';
import 'package:Mango/screens/transitions/onLoadingTransition.dart';
import 'package:Mango/screens/transitions/onSucessTransition.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(MangoApp());
}

class MangoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodScanHistoryScreen(),
      theme: ThemeData(
        fontFamily: 'BalooTammudu2',
        colorScheme: ColorScheme(
          primary: HexColor('#3D348B'),
          primaryVariant: Colors.black,
          secondary: HexColor('#FFD600'),
          secondaryVariant: HexColor('#666666'),
          surface: HexColor('#0075FF'),
          background: Colors.black,
          error: Colors.black,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: HexColor('#F7B801'),
          onBackground: Colors.black,
          onError: Colors.black,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
