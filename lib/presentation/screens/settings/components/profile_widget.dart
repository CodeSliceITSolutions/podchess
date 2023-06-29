import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/genres_text.dart';
import 'package:podchess_app/presentation/common_widgets/search_text.dart';
import 'package:sizer/sizer.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 1.h),
      child: SizedBox(
        height: 10.h,
        child: Row(
          children: [
            //SizedBox(height: 1.h),
            // SvgPicture.asset(ImageConstants.profilepng),
            SizedBox(
              width: 22.w,
              child: Image.asset(ImageConstants.profilepng,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1.h),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GenresText(text: StringConstants.name),
                  SizedBox(height: 1.h),
                  const NeoText(text: StringConstants.profileString)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
