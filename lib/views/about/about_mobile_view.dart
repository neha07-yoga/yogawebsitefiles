import 'package:flutter/material.dart';
import '../../widgets/nav_bar/sideDrawerPanel.dart';
import './about_mobile_top_view.dart';
import './about_mobile_center_view.dart';
import '../../widgets/footer/footerMobile.dart';

class AboutMobileView extends StatelessWidget {
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
        body: Scrollbar(
          child: ListView(
            children: <Widget>[
              AboutMobileTopLayout(),
              SizedBox(
                height: 20,
              ),
              AboutMobileCenterLayout(),
              Divider(
                thickness: 1,
              ),
              FooterMobileLayout()
            ],
          ),
        ));
  }
}
