import 'package:flutter/material.dart';
import 'package:podchess_app/presentation/common_widgets/title_text.dart';
import 'package:sizer/sizer.dart';

class BrowseStack extends StatelessWidget {
  const BrowseStack({Key? key, required this.image, required this.text}) : super(key: key);

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 30.h,
          width: 49.w,
          child: Image.asset(image,
              fit: BoxFit.contain),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                  height: 50.h,
                  width: 40.w,
                  color: Theme.of(context).focusColor)),
        ),
        Center(
          child: TitleText(
              text: text)
          //   child: TitleText(
          //       text: text)
        )
      ],
    );
  }
}
