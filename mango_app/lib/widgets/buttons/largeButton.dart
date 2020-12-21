import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart';

class LargeButton extends StatefulWidget {
  String message;
  LargeButton(String message) {
    this.message = message;
  }

  @override
  _LargeButtonState createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile selectedImage;

  onPressTakeAShoot() async {
    try {
      final pickedFile =
          await _imagePicker.getImage(source: ImageSource.camera);

      setState(() {
        selectedImage = pickedFile;
      });
      await uploadToS3(selectedImage.path);
      // var url =
      //     'https://lambda.us-east-1.amazonaws.com/2015-03-31/functions/arn:aws:lambda:us-east-1:784522123663:function:hellow/invocations';
      // var request = HttpClient();
    } catch (e) {
      print(e);
    }
  }

  uploadToS3(String path) async {
    try {
      var url = 'https://s3.amazonaws.com/com.test.manga';

      var request = MultipartRequest('POST', Uri.parse(url));
      request.files.add(await MultipartFile.fromPath('file', path));
      request.fields.addAll({
        'key': path.split("/").last,
        'acl': 'public-read',
      });
      var s3UploadResponse = await request.send();
      print("This worked: $s3UploadResponse");
    } catch (e) {
      print("Algo de errado não está certo. Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 328,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: onPressTakeAShoot,
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
