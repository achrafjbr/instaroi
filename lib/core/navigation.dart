import 'package:flutter/material.dart';
import 'package:insta_roi/core/routes.dart';

class Navigation {
  /// Push navigator.
  /// context : BuildContext instance,
  /// page is a Widget:
  /// ? e.g  ProfileScreen,
  static void pushNavigator({
    required BuildContext context,
    required Widget page,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  /// Push replacement navigator.
  /// context : BuildContext instance,
  /// page is a Widget:
  /// ? e.g  ProfileScreen,
  static void pushReplacementNavigator({
    required BuildContext context,
    required Widget page,
  }) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  /// Push named navigator.
  /// context : BuildContext instance.
  /// page is a static parameter of [RoutePaths] :
  /// ? e.g  RoutePaths.specific route page.
  static void pushNamedNavigator({
    required BuildContext context,
    required String page,
  }) {
    Navigator.pushNamed(context, page);
  }

  /// Push replacement named navigator.
  /// context : BuildContext instance.
  /// page is a static parameter of [RoutePaths]
  /// ? e.g  RoutePaths.specific route page,
  static void pushReplacementNamedNavigator({
    required BuildContext context,
    required String page,
  }) {
    Navigator.pushReplacementNamed(context, page);
  }

  /// Pop navigator. that remove the current page.
  static void popNavigator({required BuildContext context}) {
    Navigator.pop(context);
  }

  /// Pop until navigator.
  static void popUntilFirstRouteNavigator({required BuildContext context}) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  /// Route
  static Route createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: Curves.easeInCirc));
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  /// navigator Route
  static pushNavigatorRoute({
    required BuildContext context,
    required Widget page,
  }) async {
    //Navigator.push(context, createRoute(page));
    await Navigator.of(context)
        .pushAndRemoveUntil(createRoute(page),
        (route){
          route.popped;
          return false;
        });
  }
}
