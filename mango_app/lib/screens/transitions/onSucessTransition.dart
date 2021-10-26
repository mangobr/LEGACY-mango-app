import 'package:flutter/material.dart';

class SuccessTransionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                radius: 105,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Tudo pronto!',
                style: TextStyle(
                    fontSize: 48,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w900),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Agora é só usar!',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        fontFamily: 'Montserrat')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
