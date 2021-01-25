import 'package:Mango/widgets/buttons/largeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
                  Text(
                    'Oi, Fulana!',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'BalooTammudu2',
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.primary,
                      height: 2,
                    ),
                  ),
                  Text(
                    'Hoje você ingeriu:',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                  Text(
                    '320g',
                    style: screenSize.width < 400
                        ? TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.w900,
                            height: 1.8,
                            color: Theme.of(context).colorScheme.onSurface,
                          )
                        : TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                            height: 1.8,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                  ),
                  Text(
                    'de Carboidrato 🎉 ',
                    style: screenSize.width < 400
                        ? TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            height: 0,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            height: 0,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                  ),
                  Text(
                    'Últimas refeições postadas:',
                    style: screenSize.width < 400
                        ? TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 2.5,
                          )
                        : TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 4,
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image(
                        image: AssetImage('assets/food-1.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image(
                        image: AssetImage('assets/food-1.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image(
                        image: AssetImage('assets/food-1.png'),
                        fit: BoxFit.contain,
                      ),
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
            //   Card(
            //   elevation: 3,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(20),
            //     ),
            //   ),
            //   child: Container(
            //     child: Image.asset(
            //     'assets/food-1.png',
            //       fit: BoxFit.scaleDown,
            //     ),
            //   ),
            // );
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LargeButton(
                          message: 'Adicionar Refeição',
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
