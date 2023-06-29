import 'package:flutter/material.dart';
import 'package:podchess_app/common/config/app_routes.dart';
import 'common/config/init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(InitRoot(appRouter: AppRoutes()));
}
