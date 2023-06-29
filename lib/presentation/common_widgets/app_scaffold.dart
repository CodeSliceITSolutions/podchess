import 'package:flutter/material.dart';
import 'package:podchess_app/presentation/screens/dashboard/components/widgets/navigation_bar.dart';
import 'package:podchess_app/presentation/theme/app_color.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.navigationBar = false,
    required this.child,
    required this.bottomNavigationItems,
  });

  final bool navigationBar;
  final Widget? bottomNavigationItems;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: navigationBar ? bottomNavigationItems : null,
      body: child,
    );
  }
}
