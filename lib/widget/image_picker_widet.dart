import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          titleText: 'Image Picker',
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.grey.shade300,
              child: Center(
                  child: file == null
                      ? const Text('Image not Picked')
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('image picked');
                  print(photo!.path);
                },
                child: const Text('Pick Image')),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile>? photos = await _picker.pickMultiImage();
                  setState(() {
                    files = photos;
                  });
                  print('image picked');
                  for (int i = 0; i < files!.length; i++) {
                    print(files![i].path);
                  }
                },
                child: const Text('Pick Images')),
            ElevatedButton(onPressed: () {}, child: Text('Capture Image')),
            _text()
          ],
        )),
      ),
    );
  }

  Widget _text() {
    return Text("hello android");
  }

  Widget _customButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
