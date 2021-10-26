import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  String message;
  Color color;

  CustomOutlinedButton(String message, Color color) {
    this.message = message;
    this.color = color;
  }
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 328,
      child: OutlineButton(
        borderSide: BorderSide(
          width: 1,
          color: this.color,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            width: 600,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => {}, //this.widget.method,
        textColor: Colors.black,
        focusColor: Colors.amber,
        child: Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(4),
          child: Text(
            this.message,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
