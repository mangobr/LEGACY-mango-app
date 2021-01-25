import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerFromFlie extends StatefulWidget {
  @override
  _ImagePickerFromFlieState createState() => _ImagePickerFromFlieState();
}

class _ImagePickerFromFlieState extends State<ImagePickerFromFlie> {
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
    return Container();
  }
}
