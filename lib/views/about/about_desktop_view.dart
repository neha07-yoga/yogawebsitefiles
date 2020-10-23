import 'package:flutter/material.dart';
import '../../widgets/nav_bar/navigationBar.dart';
import './about_top_layout.dart';
import './about_center_layout.dart';
import '../../widgets/footer/footer.dart';

class AboutDesktopView extends StatelessWidget {
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
          child: ListView(
            children: <Widget>[
              AboutTopLayout(),
              SizedBox(
                height: 20,
              ),
              AboutCenterLayout(),
              Divider(
                thickness: 1,
              ),
              FooterLayout()
            ],
          ),
        ));
  }
}
