import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app/pages/home_page.dart';
import 'package:go_router_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router App',
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      name: '/home',
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
        path: '/login',
        name: '/login',
        builder: (context, state) {
          return const LoginPage();
        }),
  ],
);
