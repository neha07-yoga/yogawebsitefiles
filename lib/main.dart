import 'package:flutter/material.dart';
import './views/home/home_view.dart';
import './views/blog/blog_view.dart';
import './views/about/about_view.dart';
import './views/contactus/contactus_view.dart';
import './views/courses/courses_view.dart';
import './widgets/animation/fadeAnimation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satyam Yoga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return FadeInRoute(widget: HomeView());
          case '/about':
            return FadeInRoute(widget: AboutView());
          case '/blog':
            return FadeInRoute(widget: BlogView());
          case '/courses':
            return FadeInRoute(widget: CoursesView());
          case '/contactus':
            return FadeInRoute(widget: ContactusView());
        }
      },
    );
  }
}
