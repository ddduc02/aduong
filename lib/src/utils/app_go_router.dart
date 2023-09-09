import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_business/src/presentation/home/capcha_screen.dart';
import 'package:meta_business/src/presentation/home/widget/model_sucess.dart';
import '../presentation/home/auth_screen.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/page1/page1_screen.dart';
import '../presentation/page2/page2_screen.dart';
import 'app_get.dart';

GlobalKey<NavigatorState> get navigatorKey =>
    findInstance<GlobalKey<NavigatorState>>();

// GoRouter configuration
final goRouter = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: 'capcha',
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'page1',
      path: '/page1',
      builder: (context, state) => const Page1Screen(),
    ),
    GoRoute(
      name: 'page2',
      path: '/page2',
      builder: (context, state) => const Page2Screen(),
    ),
  ],
);
