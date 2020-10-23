import 'package:flutter/material.dart';
import '../../widgets/nav_bar/navigationBar.dart';

class BlogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset('assets/yoga_logo.png'),
          backgroundColor: Colors.white,
          actions: navBar,
        ),
        body: Container(
          height: 600,
          width: 1400,
          child: Center(
            child: Text(
              'Coming Soon .......',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ));
  }
}
