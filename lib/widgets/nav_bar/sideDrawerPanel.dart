import 'package:flutter/material.dart';

class SideDrawerPanel extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SideDrawerPanelState();
  }
}

class _SideDrawerPanelState extends State<SideDrawerPanel> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
              color: Color.fromARGB(255, 17, 30, 108),
              child: ListTile(
                leading: Icon(Icons.accessibility, color: Colors.white,),
                title: Text(
                  'Satyam Yoga',
                  style: TextStyle(color: Colors.white,
                  fontSize: 24),
                ),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('About'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          ListTile(
            leading: Icon(Icons.subscriptions),
            title: Text('Classes & Courses'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/courses');
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/contactus');
            },
          ),
        ],
      ),
    );
  }
}
