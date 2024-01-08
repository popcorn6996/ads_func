import 'package:ads_func/router.dart';
import 'package:ads_func/theme/spectrum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
  setPathUrlStrategy();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Clone',
      theme: Spectrum.darkMode,
      // home: const HomeScreen(),
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) {
        return loggedInRoutes;
      }),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
