import 'package:flutter/material.dart';
import '../../widgets/nav_bar/navigationBar.dart';
import './courses_signup_form.dart';
import './courses_element.dart';
import '../../widgets/footer/footer.dart';

class CoursesDesktopView extends StatelessWidget {
  final scrollKey2 = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset('assets/yoga_logo.png'),
          backgroundColor: Colors.white,
          actions: navBar,
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            CoursesElements(scrollKey2),
            SizedBox(
              height: 50,
            ),
            Container(
              key: scrollKey2,
              child: CoursesSignUpForm(),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              thickness: 1,
            ),
            FooterLayout()
          ],
        ))));
  }
}
