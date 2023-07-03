import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:podchess_app/presentation/common_widgets/top_genres_stack.dart';
import 'package:sizer/sizer.dart';

class TopGenresWidget extends StatelessWidget {
  TopGenresWidget({Key? key}) : super(key: key);

  final List<BrowseModel> topGenresData = [
    // BrowseModel(title: StringConstants.music, image: ImageConstants.musicsvg),
    // BrowseModel(title: StringConstants.funny, image: ImageConstants.funnysvg),
    BrowseModel(title: StringConstants.music, image: ImageConstants.music),
    BrowseModel(title: StringConstants.funny, image: ImageConstants.funny),
    BrowseModel(title: StringConstants.fashion, image: ImageConstants.fashion),
  ];

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
                return TopGenresStack(
                    image: topGenresData[index].image!,
                    text: topGenresData[index].title!);
              }),
        ));
  }
}
