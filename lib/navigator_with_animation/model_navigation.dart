import 'package:flutter/material.dart';

// ! 1] ----- SliderNavigation
class SliderNavigation extends PageRouteBuilder {
  final Widget page;
  SliderNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linearToEaseOut,
                ),
              ),
              child: child,
            );
          },
        );
}

// ! 2] ----- ScaleNavigation
class ScaleNavigation extends PageRouteBuilder {
  final Widget page;
  ScaleNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return ScaleTransition(
              scale: animation.drive(Tween(begin: 0.0, end: 1.0)),
              //*  scale: Tween(begin: 0.0, end: 1.0).animate(
              //*    CurvedAnimation(
              //*      parent: animation,
              //*      curve: Curves.linear,
              //*    ),
              //*  ),
              child: child,
            );
          },
        );
}

// ! 3] ----- RotationNavigation
class RotationNavigation extends PageRouteBuilder {
  final Widget page;
  RotationNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return RotationTransition(
              turns: animation.drive(Tween(begin: 0.0, end: 2.0)),
              //*  scale: Tween(begin: 0.0, end: 1.0).animate(
              //*    CurvedAnimation(
              //*      parent: animation,
              //*      curve: Curves.linear,
              //*    ),
              //*  ),
              child: child,
            );
          },
        );
}

// ! 4] ----- SizeNavigation
class SizeNavigation extends PageRouteBuilder {
  final Widget page;
  SizeNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}

// ! 5] ----- FadeNavigation
class FadeNavigation extends PageRouteBuilder {
  final Widget page;
  FadeNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}

// ! 6] ----- MixNavigation
class MixNavigation extends PageRouteBuilder {
  final Widget page;
  MixNavigation({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return ScaleTransition(
              scale: animation.drive(Tween(begin: 0.0, end: 1.0)),
              child: RotationTransition(
                turns: animation.drive(Tween(begin: 0.0, end: 1.0)),
                child: child,
              ),
            );
          },
        );
}
