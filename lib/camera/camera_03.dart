import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:flutter/services.dart';
import 'package:sheraspace/camera/camera_02.dart';
import 'package:sheraspace/summary/summary_01.dart';
import 'camera_01.dart';

class camera_03 extends StatefulWidget {
  const camera_03({Key? key}) : super(key: key);

  @override
  _camera_03State createState() => _camera_03State();
}

class _camera_03State extends State<camera_03> {
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
                    'Step 3',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  const Text(
                    'Confirm dimensions',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
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
                          iconSize: 100.0,
                          // onPressed: _takeVideo,

                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'Width',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: SizedBox(
                            width: 50.0,
                            height: 35.0,
                            child: TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'ft.',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'Height',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: SizedBox(
                            width: 50.0,
                            height: 35.0,
                            child: TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'ft.',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'How many doors on this wall?',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      width: 75.0,
                      child: NumberInputWithIncrementDecrement(
                        isInt: true,
                        controller: TextEditingController(),
                        min: 0,
                        max: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'How many windows on this wall?',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      width: 75.0,
                      child: NumberInputWithIncrementDecrement(
                        isInt: true,
                        controller: TextEditingController(),
                        min: 0,
                        max: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Next wall',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const camera_04(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      child: const Text(
                        '< Back',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const camera_02()),
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

class camera_04 extends StatefulWidget {
  const camera_04({Key? key}) : super(key: key);

  @override
  _camera_04State createState() => _camera_04State();
}

class _camera_04State extends State<camera_04> {
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
                    'Step 3',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  const Text(
                    'Confirm dimensions',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
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
                          iconSize: 100.0,
                          // onPressed: _takeVideo,

                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'Width',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: SizedBox(
                            width: 50.0,
                            height: 35.0,
                            child: TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'ft.',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'Height',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: SizedBox(
                            width: 50.0,
                            height: 35.0,
                            child: TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: const Text(
                              'ft.',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'How many doors on this wall?',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      width: 75.0,
                      child: NumberInputWithIncrementDecrement(
                        isInt: true,
                        controller: TextEditingController(),
                        min: 0,
                        max: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'How many windows on this wall?',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      width: 75.0,
                      child: NumberInputWithIncrementDecrement(
                        isInt: true,
                        controller: TextEditingController(),
                        min: 0,
                        max: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Take Picture of Ceiling',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const camera_01(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      child: const Text(
                        'No, skip >',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const summary_01()),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      child: const Text(
                        '< Back',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const camera_03()),
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
