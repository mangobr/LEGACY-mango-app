import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class LargeButton extends StatefulWidget {
  String message;
  Function method;
  LargeButton(String message) {
    this.message = message;
    // this.method = method;
  }

  @override
  _LargeButtonState createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile selectedImage;

  Future<dynamic> lambdaInvoke() async {
    http.Response response;
    try {
      response = await http.get(
        'https://6dwvd3miah.execute-api.us-east-1.amazonaws.com/hml/user/test',
        headers: Map<String, String>.from(
            {'X-API-KEY': 'EOgNB2Snek6PnMo1I61Gh7SgjhHUOAYJS3BjL579'}),
      );
    } catch (e) {
      print(e.stackTrace);
    }
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 328,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => {}, //this.widget.method,
        color: Theme.of(context).colorScheme.primary,
        textColor: Colors.white,
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
