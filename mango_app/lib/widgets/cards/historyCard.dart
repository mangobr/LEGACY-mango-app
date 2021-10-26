import 'package:flutter/material.dart';

class FoodScanHistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      height: 88,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3,
        margin: EdgeInsets.only(left: 50, right: 50),
        // color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/food-1.png',
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12 de Jan de 2021',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondaryVariant,
                  ),
                ),
                Text(
                  '35g de carb',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Theme.of(context).colorScheme.secondaryVariant,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
