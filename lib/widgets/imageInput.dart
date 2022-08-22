// ignore_for_file: file_names, prefer_const_constructors

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImputImage extends StatefulWidget {
  ImputImage({Key? key}) : super(key: key);

  @override
  State<ImputImage> createState() => _ImputImageState();
}

class _ImputImageState extends State<ImputImage> {
  File? storedImage;
  Future<void> _takePicture() async {
    final imageFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxWidth: 600, maxHeight: 600);
    setState(() {
      storedImage = File(imageFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: storedImage == null
              ? Text(
                  'No image taken',
                  textAlign: TextAlign.center,
                )
              : Image.file(
                  storedImage!,
                  fit: BoxFit.cover,
                ),
        ),
        Expanded(
          child: TextButton.icon(
              onPressed: _takePicture,
              icon: Icon(Icons.camera),
              label: Text('Capture image')),
        )
      ],
    );
  }
}
