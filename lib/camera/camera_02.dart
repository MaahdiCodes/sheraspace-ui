import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'camera_01.dart';
import 'camera_03.dart';

class camera_02 extends StatefulWidget {
  const camera_02({Key? key}) : super(key: key);

  @override
  _camera_02State createState() => _camera_02State();
}

class _camera_02State extends State<camera_02> {
  String dropdownValue = 'East Wall';

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
                  const Text(
                    'Step 2',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Bedroom 01',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),

                  const Text(
                    'Measurements',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(85, 0, 85, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                              child: Text("North Wall"), value: "North Wall"),
                          DropdownMenuItem(
                              child: Text("East Wall"), value: "East Wall"),
                          DropdownMenuItem(
                              child: Text("South Wall"), value: "South Wall"),
                          DropdownMenuItem(
                              child: Text("West Wall"), value: "West Wall"),
                        ],
                        onChanged: (newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

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
                          icon: const Icon(Icons.image_outlined),
                          color: Colors.black,
                          iconSize: 200.0,
                          // onPressed: _takeVideo,

                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),
                  // Container(
                  //     width: 200,
                  //     height: 100,
                  //     decoration: BoxDecoration(
                  //         border: Border.all(
                  //       width: 1,
                  //       color: Colors.grey,
                  //     )),
                  //     child: storedVideo != null
                  //         ? Image.file(
                  //             storedVideo!,
                  //             fit: BoxFit.cover,
                  //             width: double.infinity,
                  //           )
                  //         : Text(
                  //             'No Video Taken',
                  //             textAlign: TextAlign.center,
                  //           ),
                  //     alignment: Alignment.center),
                  Container(
                    margin: const EdgeInsets.fromLTRB(75, 0, 75, 0),
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Accept image',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const camera_03(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      child: const Text(
                        '< Reject and take again',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const camera_01()),
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
