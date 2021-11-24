// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:flutter/services.dart';

import 'package:camera/camera.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'package:sheraspace/video.dart';
import 'package:sheraspace/widget/video_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
                    child: Text(
                      'sheraspace',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => customer_name()),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class customer_name extends StatelessWidget {
  const customer_name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "Welcome",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: Colors.red),
                maxLines: 2,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Customer!",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: Colors.red),
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(150, 0, 150, 0),
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => property_selection()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class property_selection extends StatefulWidget {
  const property_selection({Key? key}) : super(key: key);

  @override
  _property_selectionState createState() => _property_selectionState();
}

int index = -1;
Color enableColor = Colors.red; //your color
Color disableColor = Colors.white; //your color

class _property_selectionState extends State<property_selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'Select your Property',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Property 01',
                    textAlign: TextAlign.left,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.5, color: Colors.grey),
                    primary: index == 0 ? Colors.red : Colors.white,
                    onPrimary: index == 0 ? Colors.white : Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Property 02',
                    textAlign: TextAlign.left,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.5, color: Colors.grey),
                    primary: index == 1 ? Colors.red : Colors.white,
                    onPrimary: index == 1 ? Colors.white : Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Property 03',
                    textAlign: TextAlign.left,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.5, color: Colors.grey),
                    primary: index == 2 ? Colors.red : Colors.white,
                    onPrimary: index == 2 ? Colors.white : Colors.black,
                    onSurface: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(125, 0, 125, 0),
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => video_record01()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class video_record01 extends StatelessWidget {
  const video_record01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "Now let's video",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.red),
                maxLines: 2,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "record your space!",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.red),
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(150, 0, 150, 0),
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => video_record02(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(125, 0, 125, 0),
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextButton(
                child: Text(
                  '< Back',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => property_selection()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class video_record02 extends StatefulWidget {
  final Function? onSelectVideo;

  const video_record02({Key? key, this.onSelectVideo});

  @override
  _video_record02State createState() => _video_record02State();
}

class _video_record02State extends State<video_record02> {
  String dropdownValue = 'Bedroom';

  File? storedVideo;

  Future<void> _takeVideo() async {
    final picker = ImagePicker();
    final videoFile = await picker.pickVideo(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      maxDuration: Duration(
        seconds: 25,
      ),
    );
    if (videoFile == null) {
      return;
    }
    final rlyvideoFile = File(videoFile.path);
    setState(() {
      storedVideo = rlyvideoFile;
    });
    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(rlyvideoFile.path);
    final savedVideo = await rlyvideoFile.copy('${appDir.path}/$fileName');
    widget.onSelectVideo?.call(savedVideo);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Text(
                    'Step 1',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Capture a video',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(85, 0, 85, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        value: dropdownValue,
                        items: const [
                          DropdownMenuItem(
                              child: Text("Bedroom"), value: "Bedroom"),
                          DropdownMenuItem(
                              child: Text("Dining Place"),
                              value: "Dining Place"),
                          DropdownMenuItem(
                              child: Text("Kitchen"), value: "Kitchen"),
                        ],
                        onChanged: (newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.lightbulb_outline),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: Text(
                          'Take video of your entire space',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.lightbulb_outline),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: Text(
                          'The video will pause every 25 seconds',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.lightbulb_outline),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: Text(
                          'Continue from same location for the next video',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      child: storedVideo != null
                          // Image.file(
                          //     storedVideo!,
                          //     fit: BoxFit.cover,
                          //     width: double.infinity,
                          //   )
                          ? VideoWidget(storedVideo!)
                          : Text(
                              'No Video Taken',
                              textAlign: TextAlign.center,
                            ),
                      alignment: Alignment.center),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        // ElevatedButton(
                        //   child: const Text('Gallery'),
                        //   onPressed: () async {
                        //     List<Media>? res = await ImagesPicker.pick(
                        //       count: 4,
                        //       pickType: PickType.video,
                        //       language: Language.System,
                        //       // maxSize: 500,
                        //     );
                        //     if (res != null) {
                        //       print(res.map((e) => e.path).toList());
                        //       setState(() {
                        //         path = res[0].thumbPath;
                        //       });
                        //
                        //       // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                        //       // print(status);
                        //     }
                        //   },
                        // ),
                        IconButton(
                          icon: Icon(Icons.play_circle_fill),
                          color: Colors.red,
                          iconSize: 100.0,
                          onPressed: _takeVideo,

                          // onPressed: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => video_record03()),
                          //   );
                          // },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Click to start',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 50,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      child: Text(
                        '< Back',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => video_record05(
                                    imagePath: 'rlyvideoFile',
                                  )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
