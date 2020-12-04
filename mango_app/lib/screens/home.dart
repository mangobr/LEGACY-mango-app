import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/mango-logo.svg',
                    semanticsLabel: 'Mango Logo',
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    'Oi, Fulana!',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'BalooTammudu2',
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Text(
                    'Hoje você ingeriu:',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '320g',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                      height: 2,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'de Carboidrato 🎉 ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      height: 0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Text(
                    'Últimas refeições postadas:',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 4,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 16, right: 16),
                child: Text(
                  'Ver Mais',
                  style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ButtonTheme(
                  minWidth: 328,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Adicionar Refeição',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
