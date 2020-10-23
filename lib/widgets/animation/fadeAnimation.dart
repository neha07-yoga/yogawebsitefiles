import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FadeInRoute extends PageRouteBuilder {
  final Widget widget;
  FadeInRoute({this.widget})
      : super(
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.elasticInOut);
              return FadeTransition(opacity: animation, child: widget);
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
