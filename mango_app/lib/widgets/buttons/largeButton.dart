import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  String message;
  LargeButton(String message) {
    this.message = message;
  }
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
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
            this.message,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
