import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './courses_desktop_view.dart';
import './courses_mobile_view.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({Key key}) : super(key :key);
@override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CoursesMobileView(),
      tablet: CoursesDesktopView(),
      desktop: CoursesDesktopView(),
    );
  }
}