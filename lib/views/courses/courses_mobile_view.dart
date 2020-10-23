import 'package:flutter/material.dart';
import './courses_signup_form.dart';
import './courses_mobile_element.dart';
import '../../widgets/footer/footerMobile.dart';
import '../../widgets/nav_bar/sideDrawerPanel.dart';

class CoursesMobileView extends StatelessWidget {
  final mobileScrollKey2 = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 17, 30, 108)),
          actions: <Widget>[
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/yoga_logo.png'),
            )
          ],
        ),
        drawer: SideDrawerPanel(),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            CoursesMobileElements(mobileScrollKey2),
            SizedBox(
              height: 20,
            ),
            Container(
              key: mobileScrollKey2,
              child: CoursesSignUpForm(),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              thickness: 1,
            ),
            FooterMobileLayout()
          ],
        ))));
  }
}
