import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  Color color;

  SignUpHeader(Color color) {
    this.color = color;
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
        ),
        Text(
          'Crie seu cadastro',
          style: TextStyle(
            fontSize: 18,
            color: this.color,
          ),
        ),
        Icon(
          Icons.clear,
          color: this.color,
        ),
      ],
    );
  }
}
