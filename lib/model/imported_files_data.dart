import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class ImportedFiles with ChangeNotifier {
  Future<String> import() async {
    String _image;
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = pickedFile.path;
      return _image;
    } else {
      print('No image selected.');
    }
  }

  Future<void> addItem(Future<String> item) async {
    listOfFiles.add(await item);
  }

  List<String> listOfFiles = [];
}
