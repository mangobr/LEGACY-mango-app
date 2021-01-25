import 'package:Mango/widgets/buttons/largeButton.dart';
import 'package:Mango/widgets/buttons/outlinedButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: Center(
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Olá!",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          fontFamily: 'Montserrat'),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Bem vinde ao Mango, ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '''aqui você consegue       
fazer sua contagem de carboidrato de forma
simples e rápida.
                        ''',
                          style: TextStyle(height: 2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 88,
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    LargeButton(
                      'Usar email ou username',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text('ou'),
                    SizedBox(
                      height: 12,
                    ),
                    CustomOutlinedButton(
                      'Entrar com Facebook',
                      Theme.of(context).colorScheme.surface,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CustomOutlinedButton(
                      'Entrar com Google',
                      Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Ainda não tem uma conta?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Crie seu cadastro',
                      style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
