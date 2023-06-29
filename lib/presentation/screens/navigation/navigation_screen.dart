import 'package:flutter/material.dart';
import 'package:podchess_app/presentation/common_widgets/app_scaffold.dart';
import 'package:podchess_app/presentation/screens/dashboard/components/widgets/navigation_bar.dart';
import 'package:podchess_app/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:podchess_app/presentation/screens/search/search_screen.dart';
import 'package:podchess_app/presentation/screens/settings/settings_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List widgets = [
    const DashboardScreen(),
    const SearchScreen(),
    const SettingsScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: widgets[currentIndex],
      navigationBar: true,
      bottomNavigationItems: Container(
        color: Colors.transparent,
        child: BottomNavigationItems(
            pageNumber: currentIndex,
            onChange: (value) {
              setState(() {
                currentIndex = value;
              });
            }),
      ),
    );
  }
}
