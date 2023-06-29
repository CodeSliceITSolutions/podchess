import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:podchess_app/common/constants/route_constants.dart';
import 'package:podchess_app/presentation/screens/navigation/navigation_screen.dart';

import '../../presentation/screens/offline/offline_screen.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
        builder: (_) => OfflineBuilder(
              connectivityBuilder: (BuildContext context,
                  ConnectivityResult connectivityResult, Widget child) {
                final bool connected =
                    connectivityResult != ConnectivityResult.none;
                if (!connected) {
                  return const OfflineScreen();
                }
                return getScreen(routeSettings);
              },
              child: const SizedBox.shrink(),
            ),
        settings: routeSettings);
  }

  Widget getScreen(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.navigation:
        return const NavigationScreen();
      default:
        return const NavigationScreen();
    }
  }
}
