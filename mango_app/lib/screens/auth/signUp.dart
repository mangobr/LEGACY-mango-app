import 'package:Mango/widgets/buttons/largeButton.dart';
import 'package:Mango/widgets/headers/header.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MangoHeader(color: Colors.black, message: 'Crie seu cadastro'),
            SizedBox(
              height: 54,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vamos começar!',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nos diga seu email!',
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(context).colorScheme.secondaryVariant),
                      ),
                      TextFormField(
                        decoration: InputDecoration(),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Agora seu nome',
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(context).colorScheme.secondaryVariant),
                      ),
                      TextFormField(
                        decoration: InputDecoration(),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Crie uma senha',
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(context).colorScheme.secondaryVariant),
                      ),
                      TextFormField(
                        decoration: InputDecoration(),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Center(
                        child: LargeButton(
                          message: 'Quero Continuar',
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
