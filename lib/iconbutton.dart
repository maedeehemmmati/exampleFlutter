import 'package:figma/screens/feedback.dart';
import 'package:flutter/material.dart';

import 'comment.dart';

class Iconbuttons extends StatefulWidget {
  const Iconbuttons({Key? key}) : super(key: key);

  @override
  _IconbuttonState createState() => _IconbuttonState();
}

class _IconbuttonState extends State<Iconbuttons> {
  Color _iconColor = Colors.white;
  Color _iconColor1 = Colors.white;
  Color _iconColor2 = Colors.white;
  Color _iconColor3 = Colors.white;

  bool visi = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                iconSize: 25,
                icon: Icon(Icons.share),
                color: _iconColor,
                onPressed: () {
                  setState(() {
                    if (_iconColor == Colors.white) {
                      _iconColor = Colors.red;
                    } else {
                      _iconColor = Colors.white;
                    }
                  });
                }),
            IconButton(
                iconSize: 25,
                icon: Icon(Icons.bookmark),
                color: _iconColor1,
                onPressed: () {
                  setState(() {
                    if (_iconColor1 == Colors.white) {
                      _iconColor1 = Colors.red;
                    } else {
                      _iconColor1 = Colors.white;
                    }
                  });
                }),
            IconButton(
                iconSize: 25,
                icon: Icon(Icons.comment),
                color: _iconColor2,
                onPressed: () {
                  setState(() {
                    if (_iconColor2 == Colors.white) {
                      _iconColor2 = Colors.red;
                      //visi = true;
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Feed()));
                    } else {
                      _iconColor2 = Colors.white;
                      //visi = false;
                    }
                  });
                }),
            IconButton(
                iconSize: 25,
                icon: Icon(Icons.favorite),
                color: _iconColor3,
                onPressed: () {
                  setState(() {
                    if (_iconColor3 == Colors.white) {
                      _iconColor3 = Colors.red;
                    } else {
                      _iconColor3 = Colors.white;
                    }
                  });
                }),
          ],
        ),
        Visibility(
          visible: visi,
          child: Container(color: Colors.black12, child: TestMe()),
        ),
      ],
    );
  }
}
