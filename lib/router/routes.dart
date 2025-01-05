import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:growell_project/features/signin/view/signin_view.dart';
import 'package:growell_project/features/welcome_screen/view/welcome_screen_view.dart';
import 'package:growell_project/router/routes_constants.dart';
class AppRouter{
static final  GoRouter router = GoRouter(
  initialLocation:RoutesConstants.welconscreen ,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesConstants.welconscreen,
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomeScreenView();
      },),
      GoRoute(
      path: RoutesConstants.signinscreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SigninView();
      },),
  ],
);
}