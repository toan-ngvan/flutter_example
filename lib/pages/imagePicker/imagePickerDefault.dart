import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:image_picker/image_picker.dart';

class ImagePickerDefault extends StatefulWidget {
  @override
  _ImagePickerDefaultState createState() => _ImagePickerDefaultState();
}

class _ImagePickerDefaultState extends State<ImagePickerDefault> {
  File _image;
  bool _isLoading = false;
  // final StorageReference _storage = FirebaseStorage.instance.ref();

  _getImage(ImageSource source) async {
    _image = await ImagePicker.pickImage(source: source);
    if (_image == null) {
      return;
    }
    setState(() {});
    final fileName = path.basename(_image.path);
    // final abc = _storage.child('${DateTime.now().toString()}_$fileName');
    // abc.putFile(_image);

    /// Call API GCP
  }

  void _uploadImage() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker default'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _getImage(ImageSource.gallery);
                },
                child: Text('Get image from gallery'),
              ),
              RaisedButton(
                onPressed: () {
                  _getImage(ImageSource.camera);
                },
                child: Text('Get image from camera'),
              ),
              Divider(
                color: Colors.black54,
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: 400,
                        ),
                        child: _image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.file(_image))
                            : Text('No image chose'),
                      ),
                      RaisedButton(
                        onPressed: () async {
                          if (_isLoading) {
                            return;
                          }
                          print(_isLoading);
                          setState(() {
                            _isLoading = true;
                          });
                          await _uploadImage();
                        },
                        child: _isLoading
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(),
                              )
                            : Text('Upload image'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
