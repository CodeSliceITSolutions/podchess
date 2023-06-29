import 'package:flutter/material.dart';
import 'package:podchess_app/presentation/screens/settings/components/account_widget.dart';
import 'package:podchess_app/presentation/screens/settings/components/image_widget.dart';
import 'package:podchess_app/presentation/screens/settings/components/profile_widget.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(height: 7.h),
        const ProfileWidget(),
        SizedBox(height: 1.h),
        const ImageWidget(),
        AccountWidget()
      ],
    );
  }
}
