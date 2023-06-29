import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).primaryColor,
      thickness: 0.5,
      indent: 3.h,
      endIndent: 3.h,
    );
  }
}
