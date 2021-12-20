import 'package:flutter/material.dart';

class Buildcard extends StatefulWidget {
  final String item;
  const Buildcard({Key? key, required this.item}) : super(key: key);

  @override
  _BuildcardState createState() => _BuildcardState();
}

class _BuildcardState extends State<Buildcard> {
  Color _hasBeenPressed = Colors.white10;
  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: 60,
      height: 50,
      child: ElevatedButton(
        // decoration: BoxDecoration(
        //     border: Border.all(color: Colors.white, width: 3),
        //     borderRadius: BorderRadius.all(Radius.circular(10))),
        style: ElevatedButton.styleFrom(
            //background color of button
            primary: _hasBeenPressed,
            side: BorderSide(
                width: 3, color: Colors.white), //border width and color
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(10)),

        child: Column(
          children: [
            Text(
              widget.item,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
        onPressed: () {
          setState(() {
            if (_hasBeenPressed == Colors.white10) {
              _hasBeenPressed = Colors.red;
            } else {
              _hasBeenPressed = Colors.white10;
            }
          });
        },
      ),
    );
  }
}
