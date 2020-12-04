import 'package:Mango/reducers/screenSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          ],
        ),
      ),
    );
  }
}
