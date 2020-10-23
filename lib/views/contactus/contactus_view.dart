import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './contactus_desktop_view.dart';
import './contactus_mobile_view.dart';

class ContactusView extends StatelessWidget {
  const ContactusView({Key key}) : super(key :key);
@override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactusMobileView(),
      tablet: ContactusDesktopView(),
      desktop: ContactusDesktopView(),
    );
  }
}