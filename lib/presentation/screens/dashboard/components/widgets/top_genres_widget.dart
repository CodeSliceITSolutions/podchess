import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:podchess_app/presentation/common_widgets/title_text.dart';
import 'package:podchess_app/presentation/theme/app_color.dart';
import 'package:sizer/sizer.dart';

class TopGenresWidget extends StatelessWidget {
  List<BrowseModel> topGenresData = [
    // BrowseModel(title: StringConstants.music, image: ImageConstants.musicsvg),
    // BrowseModel(title: StringConstants.funny, image: ImageConstants.funnysvg),
    BrowseModel(title: StringConstants.music, image: ImageConstants.music),
    BrowseModel(title: StringConstants.funny, image: ImageConstants.funny),
    BrowseModel(title: StringConstants.stories, image: ImageConstants.stories),
  ];

  TopGenresWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: SizedBox(
        height: 10.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topGenresData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Stack(children: [
                // SvgPicture.asset(
                //   topGenresData[index].image!,
                // ),
                // child: SvgPicture.asset(ImageConstants.musicsvg),
                //),
                SizedBox(
                  width: 40.w,
                  height: 50.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(topGenresData[index].image!,
                        fit: BoxFit.cover),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 6),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(14.0),
                //     child: Container(
                //         height: 50.h,
                //         width: 36.w,
                //         color: Theme.of(context).focusColor),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 4.h),
                  child: TitleText(text: topGenresData[index].title!),
                )
              ]),
            );
          },
        ),
      ),
    );
  }

}
