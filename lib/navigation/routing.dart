import 'package:facebook_profile/view/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'error_widget.dart' as e;

class AppRoute{
  static final router = GoRouter(
  routes:[
    GoRoute(path: "/", builder: (BuildContext context, GoRouterState state)=> const Home()),
  ],
    errorBuilder: (context,state)=> e.ErrorWidget(error:state.error.toString()),
  );
}