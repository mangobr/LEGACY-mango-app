import 'package:flutter/material.dart';

class LargeButton extends StatefulWidget {
  String message;
  Color backgroundColor;
  Color textColor;
  Function method;

  LargeButton({
    @required String message,
    @required Color backgroundColor,
    @required Color textColor,
  }) {
    this.message = message;
    this.backgroundColor = backgroundColor;
    this.textColor = textColor;
    // this.method = method;
  }

  @override
  _LargeButtonState createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 328,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => {}, //this.widget.method,
        color: this.widget.backgroundColor,
        textColor: this.widget.textColor,
        child: Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(4),
          child: Text(
            this.widget.message,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
