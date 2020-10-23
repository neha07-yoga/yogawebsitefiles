import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './home_desktop_view.dart';
import './home_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key :key);
@override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobileView(),
      tablet: HomeDesktopView(),
      desktop: HomeDesktopView(),
    );
  }
}