import 'package:flutter/material.dart';
import 'package:podchess_app/presentation/common_widgets/title_text.dart';
import 'package:sizer/sizer.dart';

class TopGenresStack extends StatelessWidget {
  const TopGenresStack({Key? key, required this.image, required this.text})
      : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Stack(
          children: [
            // SvgPicture.asset(
            //   topGenresData[index].image!,
            // ),
            // child: SvgPicture.asset(ImageConstants.musicsvg),
            //),
            SizedBox(
              width: 39.w,
              height: 50.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(image,
                    fit: BoxFit.cover),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                  height: 50.h,
                  width: 39.w,
                  color: Theme
                      .of(context)
                      .focusColor),
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 4.h, top: 0.h),
                child: TitleText(text: text),
              ),
            )
          ]),
    );
  }
}