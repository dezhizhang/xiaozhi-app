/*
 * :file description: 
 * :name: /xiaozhi/lib/pages/advice/advice.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:17:21
 */
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Advice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('投诉建议'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent> {
  late File _image;
  final picker = ImagePicker();
  handleTaking() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  handlePhoto() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  handleSubmit() async {
    FormData formData = new FormData.fromMap({
      "name": "xiaozhi",
      "age": 25,
      "file": await MultipartFile.fromFile("${this._image}", filename: "1.png"),
      // "file":new UploadFileInfo(this._image, "xxx.jpg"),
    });
    var response =
        await Dio().post("http://jd.itying.com/imgupload", data: formData);
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(child: Text('拍照'), onPressed: this.handleTaking),
        SizedBox(height: 10),
        RaisedButton(
          child: Text('相册选择'),
          onPressed: handlePhoto,
        ),
        RaisedButton(child: Text('上传图片'), onPressed: handleSubmit)
      ],
    );
  }
}
