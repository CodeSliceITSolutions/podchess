import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/app_scaffold.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomNavigationItems: null,
      child: Center(
        child: Text(StringConstants.offline,
            style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
