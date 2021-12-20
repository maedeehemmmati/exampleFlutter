import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.white.withOpacity(0.3),
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            child: Text('Tab 1'),
          ),
          Tab(
            child: Text('Tab 2'),
          ),
          Tab(
            child: Text('Tab 3'),
          ),
          Tab(
            child: Text('Tab 4'),
          ),
          Tab(
            child: Text('Tab 5'),
          ),
          Tab(
            child: Text('Tab 6'),
          )
        ]);
  }
}
