import 'package:Mango/widgets/headers/signUpHeader.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignUpHeader(Colors.black),
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
                  Text(
                    'Nos diga seu email!',
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
