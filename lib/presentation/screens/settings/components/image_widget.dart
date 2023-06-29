import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/image_text.dart';
import 'package:sizer/sizer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: 2.h, right: 2.h),
        child: Image.asset(
          ImageConstants.containerImage,
          width: 87.w,
          height: 13.h,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17.0),
          child: Container(
            width: 87.w,
            height: 13.h,
            color: Theme.of(context).focusColor,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 13.h, top: 4.h),
        child: Column(
          children: const [ImageText(text: StringConstants.upgrade),
          ImageText(text: StringConstants.account)],
        ),
      )
    ]);
  }
}
