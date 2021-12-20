import 'package:figma/screens/feedback.dart';
import 'package:figma/screens/profile.dart';
import 'package:figma/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('asset/1.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Profile(),
              ))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Setting(),
              ))
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Feed(),
              ))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {SystemNavigator.pop()},
          ),
        ],
      ),
    );
  }
}
