import 'package:Mango/widgets/buttons/largeButton.dart';
import 'package:Mango/widgets/headers/header.dart';
import 'package:flutter/material.dart';

class UserRolesScreen extends StatefulWidget {
  @override
  _UserRolesScreenState createState() => _UserRolesScreenState();
}

class _UserRolesScreenState extends State<UserRolesScreen> {
  final radioMessageList = [
    'Eu tenho diabetes',
    'Meu filho/filha/filhe tem diabetes',
    'Sou médico e cuido de pessoas diabéticas'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            MangoHeader(color: Colors.white, message: 'Crie seu cadastro'),
            Container(
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Qual das seguintes opções melhor te descreve?',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Eu tenho diabetes',
                            textAlign: TextAlign.center,
                            strutStyle: StrutStyle(leading: 2),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Meu filho/filha/filhe tem diabetes',
                            strutStyle: StrutStyle(leading: 2),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Sou médico e cuido de pessoas diabéticas',
                            strutStyle: StrutStyle(leading: 2),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            LargeButton(
                message: 'Próxima pergunta',
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
