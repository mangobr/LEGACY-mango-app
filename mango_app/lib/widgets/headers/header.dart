import 'package:flutter/material.dart';

class MangoHeader extends StatelessWidget {
  Color color;
  String message;

  MangoHeader({@required Color color, @required String message}) {
    this.color = color;
    this.message = message;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: this.color,
          ),
          onTap: () => print('Clicked - return'),
        ),
        Text(
          message,
          strutStyle: StrutStyle(leading: 4, forceStrutHeight: true),
          style: TextStyle(
            fontSize: 18,
            color: this.color,
          ),
        ),
        InkWell(
          child: Icon(
            Icons.clear,
            color: this.color,
          ),
          onTap: () => print('Clicked - return'),
        ),
      ],
    );
  }
}
