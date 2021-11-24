import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sheraspace/summary/summary_02.dart';
import 'package:sheraspace/summary/summary_03.dart';

class summary_01 extends StatelessWidget {
  const summary_01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Would you like to",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30, color: Colors.red),
                maxLines: 2,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "view a summary",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30, color: Colors.red),
                maxLines: 2,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "of your data?",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30, color: Colors.red),
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(150, 0, 150, 0),
              height: 50,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                child: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const summary_02()),
                  );
                },
              ),
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
                    MaterialPageRoute(builder: (context) => const summary_03()),
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
