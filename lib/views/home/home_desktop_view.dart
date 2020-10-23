import 'package:flutter/material.dart';
import '../../widgets/nav_bar/navigationBar.dart';
import './home_top_layout.dart';
import './home_center_layout.dart';
import '../../widgets/footer/footer.dart';
import './home_customer_feedback.dart';

class HomeDesktopView extends StatelessWidget {
  final scrollKey1 = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 17, 30, 108),
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
              HomeTopLayout(scrollKey1),
              Container(
                key: scrollKey1,
                child: HomeCenterLayout(),
              ),
              CustomerFeedback(),
              Divider(
                thickness: 1,
              ),
              FooterLayout(),
              SizedBox(height: 10)
            ],
          ),
        )));
  }
}
