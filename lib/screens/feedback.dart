import 'package:flutter/material.dart';

import '../comment.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _Feed createState() => _Feed();
}

class _Feed extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Container(child: TestMe()),
    );
  }
}
