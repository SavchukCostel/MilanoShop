import 'package:flutter/material.dart';

import '../pages/home/home_view.dart';
import '../pages/signin/sign_in_view.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String sign_in = '/sign_in';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomeView(),
    sign_in: (BuildContext context) => const SignInView(),
  };
}
