import 'package:Mango/widgets/buttons/largeButton.dart';
import 'package:Mango/widgets/headers/signUpHeader.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  String username;

  WellcomeScreen(String username) {
    this.username = username;
  }

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            SignUpHeader(Colors.white),
            Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: '''Maravilha, 
${this.widget.username}!''',
                        style: TextStyle(
                            fontFamily: 'BalooTammudu2',
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                            height: 0.8),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Montserrat'),
                          children: <TextSpan>[
                            TextSpan(
                              text: '''Queremos te conhecer um pouquinho 
melhor e dar a melhor experiência 
usando o Mango. Vamos lá?
                                  ''',
                              style: TextStyle(height: 2),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LargeButton(
                message: 'Vamos lá!',
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                textColor: Theme.of(context).colorScheme.primary),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
