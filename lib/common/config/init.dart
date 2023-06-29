import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:podchess_app/common/config/app_routes.dart';
import 'package:podchess_app/common/config/navigation_key.dart';
import 'package:podchess_app/common/constants/route_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/theme/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:app_codeslice/common/config/acs_flavour_config.dart';
import 'package:app_codeslice/common/config/preferences_config.dart';

import '../injector/injector_config.dart';

enum BuildEnvironment { dev, prod, staging }

class InitRoot extends StatefulWidget {
  final AppRoutes appRouter;

  const InitRoot({Key? key, required this.appRouter}) : super(key: key);

  @override
  State<InitRoot> createState() => _InitRootState();
}

class _InitRootState extends State<InitRoot> {
  @override
  void initState() {
    super.initState();

    initData();
  }

  void initData() async {
    try {
      String whiteLabelPath = 'assets/whitelabel/';
      await dotenv.load(fileName: "assets/.env");
      String flavourString = await rootBundle.loadString("assets/flavour.json");
      Map<String, dynamic> flavourJson =
          await json.decode(flavourString.toString());

      Map<String, dynamic> flavourData = {
        "appName": flavourJson['app_title'],
        "appLogo": whiteLabelPath + flavourJson['logo'],
        "baseUrl": flavourJson['prod_url'],
        "enableUnitTesting":
            dotenv.env['ENABLE_TESTING'] == "false" ? false : true,
        "loadFromJson": dotenv.env['LOAD_FROM_JSON'] == "false" ? false : true,
      };
      ACSFlavourConfig().initConfig(flavourData);
      InjectorConfig.setup();
    } catch (e) {
      log("Error:$e");
    }
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    ACSPreferenceConfig.init();
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        navigatorKey: appNavigationKey,
        debugShowCheckedModeBanner: false,
        title: StringConstants.title,
        onGenerateRoute: widget.appRouter.generateRoute,
        initialRoute: RouteConstants.navigation,
        themeMode: ThemeMode.light,
        theme: CustomThemeData.lightTheme,
        darkTheme: CustomThemeData.lightTheme,
      );
    });
  }
}
