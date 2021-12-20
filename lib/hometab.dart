import 'package:flutter/material.dart';
import 'package:figma/iconbutton.dart';
import 'package:figma/swiper.dart';
import 'package:figma/sidemenu.dart';
import 'package:flutter/services.dart';
import 'iconbutton.dart';
import 'scrollbutton.dart';

import 'tabbar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> items = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];
  late Color _containerColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff293165),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff293165),
        title: Text("Survey App"),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => SystemNavigator.pop(),
          ),
        ],
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        bottom: PreferredSize(
            child: DefaultTabController(
              length: 6,
              child: Tabbar(),
            ),
            preferredSize: Size.fromHeight(30.0)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "What is Lorem Ipsum?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                ),
                Container(
                  height: 300,
                  child: swiper(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(20),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          Buildcard(item: items[index]),
                      separatorBuilder: (context, _) => SizedBox(
                            width: 12,
                          ),
                      itemCount: items.length),
                ),
                Container(
                  child: Iconbuttons(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
