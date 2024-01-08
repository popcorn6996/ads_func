import 'package:ads_func/features/home/screens/home_screen.dart';
import 'package:ads_func/features/home/screens/video_details.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedInRoutes = RouteMap(routes: {
  '/': (route) => const MaterialPage(child: HomeScreen()),
  '/video-details': (route) => const MaterialPage(child: VideoDetails()),
});
