import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sheraspace/app_example/login_screen.dart';
import 'package:sheraspace/summary/summary_03.dart';

class summary_02 extends StatefulWidget {
  const summary_02({Key? key}) : super(key: key);

  @override
  _summary_02State createState() => _summary_02State();
}

class _summary_02State extends State<summary_02> {
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
                    'Summary',
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
                    height: 75.0,
                  ),
                  const Text(
                    'Video',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.ondemand_video_rounded),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.ondemand_video_rounded),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.ondemand_video_rounded),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.ondemand_video_rounded),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Measurements',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.image_outlined),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.image_outlined),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.image_outlined),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          flex: 5,
                          child: IconButton(
                              icon: const Icon(Icons.image_outlined),
                              color: Colors.black,
                              iconSize: 50.0,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    'Want to capture another room?',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(150, 0, 150, 0),
                    height: 50,
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
                              builder: (context) => const summary_03()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text(
                        'Yes',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const video_record02()),
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
