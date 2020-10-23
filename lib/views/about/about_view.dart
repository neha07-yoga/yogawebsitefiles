import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './about_desktop_view.dart';
import './about_mobile_view.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key :key);
@override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobileView(),
      tablet: AboutDesktopView(),
      desktop: AboutDesktopView(),
    );
  }
}