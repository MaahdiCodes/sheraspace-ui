import 'package:flutter/material.dart';
import 'package:sheraspace/camera/camera_01.dart';
import 'package:sheraspace/app_example/login_screen.dart';

class video_record03 extends StatefulWidget {
  const video_record03({Key? key}) : super(key: key);

  @override
  _video_record03State createState() => _video_record03State();
}

class _video_record03State extends State<video_record03> {
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
                    'Step 1',
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
                    'Capture a video',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
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
                    height: 15.0,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.hourglass_empty_rounded),
                            color: Colors.black,
                            iconSize: 180.0,
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Please wait while',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    'we save the video',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(150, 0, 150, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const video_record04()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                  //   height: 50,
                  //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //   child: TextButton(
                  //       child: const Text(
                  //         '< Back',
                  //         style: TextStyle(fontSize: 17, color: Colors.black),
                  //       ),
                  //       onPressed: () {}),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class video_record04 extends StatefulWidget {
  const video_record04({Key? key}) : super(key: key);

  @override
  _video_record04State createState() => _video_record04State();
}

class _video_record04State extends State<video_record04> {
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
                    'Step 1',
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
                    'Capture videos',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
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
                    height: 15.0,
                  ),
                  const Text(
                    'To continue recording:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            color: Colors.red,
                            iconSize: 100.0,
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'To finish:',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.thumb_up_off_alt_rounded),
                          color: Colors.red,
                          iconSize: 100.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const video_record05(
                                        imagePath: '',
                                      )),
                            );
                          },
                        ),
                      ],
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

class video_record05 extends StatefulWidget {
  final String imagePath;
  const video_record05({Key? key, required this.imagePath}) : super(key: key);

  @override
  _video_record05State createState() => _video_record05State();
}

class _video_record05State extends State<video_record05> {
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
                    'Summary: Step 1',
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
                    height: 15.0,
                  ),
                  const Text(
                    'Capture videos',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              IconButton(
                                  icon:
                                      const Icon(Icons.ondemand_video_rounded),
                                  color: Colors.black,
                                  iconSize: 100.0,
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              IconButton(
                                  icon:
                                      const Icon(Icons.ondemand_video_rounded),
                                  color: Colors.black,
                                  iconSize: 100.0,
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              IconButton(
                                  icon:
                                      const Icon(Icons.ondemand_video_rounded),
                                  color: Colors.black,
                                  iconSize: 100.0,
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Finish & next',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const camera_01()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
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
