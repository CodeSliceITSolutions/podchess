import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewWidget extends StatelessWidget {
   ListViewWidget({Key? key, required this.child, required this.itemCount}) : super(key: key);

 final Widget child;
 final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount:itemCount,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 0.h),
          itemBuilder: (BuildContext context, int index) {
            return child;
          }
              ),
            );
          }

  }

