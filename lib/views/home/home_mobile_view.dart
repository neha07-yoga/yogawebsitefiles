import 'package:flutter/material.dart';
import '../../widgets/footer/footerMobile.dart';
import '../../widgets/nav_bar/sideDrawerPanel.dart';
import './home_mobile_top_layout.dart';
import './home_mobile_center_layout.dart';
import './home_mobile_customer_feedback.dart';

class HomeMobileView extends StatelessWidget {
  final mobileScrollKey1 = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeMobileTopLayout(mobileScrollKey1),
              Container(
                key: mobileScrollKey1,
                child: HomeMobileCenterLayout(),
              ),
              MobileCustomerFeedback(),
              Divider(
                thickness: 1,
              ),
              FooterMobileLayout(),
            ],
          ),
        ));
  }
}
