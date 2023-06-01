


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixify/features/edit_photo_page/presentation/pages/edit_photo_page.dart';
import 'package:pixify/features/get_started_page/presentation/pages/get_started_page.dart';
import 'package:pixify/features/global/const/app_route_const.dart';
import 'package:pixify/features/home_page/presentation/pages/home_page.dart';
import 'package:pixify/features/photo_details_page/presentation/pages/photo_details_page.dart';
import 'package:pixify/features/search_page/presentation/pages/search_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteConst.getStarted:
        return MaterialPageRoute(
          builder: (_) => const GetStartedPage(),
          settings: settings,
        );

      case AppRouteConst.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomePage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteConst.search:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const SearchPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteConst.detailPhoto:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const PhotoDetailsPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteConst.editPhoto:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const EditPhotoPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}