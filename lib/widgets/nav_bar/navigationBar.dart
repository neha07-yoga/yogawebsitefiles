import 'package:flutter/material.dart';

const List<Widget> navBar = [
  NavBarItem('Home', '/'),
  SizedBox(
    width: 30,
  ),
  NavBarItem('About', '/about'),
  SizedBox(
    width: 30,
  ),
  NavBarItem('Classes & Courses', '/courses'),
  SizedBox(
    width: 30,
  ),
  // NavBarItem('Blog', '/blog'),
  // SizedBox(
  //   width: 30,
  // ),
  NavBarItem('Contact Us', '/contactus'),
  SizedBox(
    width: 80,
  ),
];

class NavBarItem extends StatelessWidget {
  final String title;
  final String routeName;
  const NavBarItem(this.title, this.routeName);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(title,
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 17, 30, 108),
          )),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
