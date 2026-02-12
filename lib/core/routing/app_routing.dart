import "package:flutter/material.dart";
import "package:mvvm_project/features/gold/presentation/screens/gold_screen.dart";
import "../presentation/home_screen.dart";

import "app_routes.dart";

class AppRouting {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoutes.gold:
        return MaterialPageRoute(builder: (context) => const GoldScreen());

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("No Route Found")));
  }
}
