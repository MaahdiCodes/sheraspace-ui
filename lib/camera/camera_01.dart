import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sheraspace/camera/camera_02.dart';

class camera_01 extends StatefulWidget {
  const camera_01({Key? key}) : super(key: key);

  @override
  _camera_01State createState() => _camera_01State();
}

class _camera_01State extends State<camera_01> {
  String dropdownValue = 'North Wall';

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
                    'Take Photos',
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
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.lightbulb_outline),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: Text(
                          'Take photo of each wall',
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
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.lightbulb_outline),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: Text(
                          'Ensure you have captured all walls in the space',
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
                          icon: const Icon(Icons.camera_alt),
                          color: Colors.red,
                          iconSize: 100.0,
                          // onPressed: _takeVideo,

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const camera_02()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Click to start',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
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
