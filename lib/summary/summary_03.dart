import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class summary_03 extends StatelessWidget {
  const summary_03({Key? key}) : super(key: key);

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
                "Thank you for",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 27, color: Colors.red),
                maxLines: 2,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "submitting all details!",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 27, color: Colors.red),
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Your Sheraspace Rep will be in touch",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 19, color: Colors.black),
                maxLines: 2,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "with you for next steps!",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 19, color: Colors.black),
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 75.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              height: 50,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                child: const Text(
                  'Finish',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
