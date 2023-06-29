import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:podchess_app/presentation/common_widgets/title_text.dart';
import 'package:sizer/sizer.dart';

class BrowseWidget extends StatelessWidget {
  BrowseWidget({
    Key? key,
  }) : super(key: key);

  List<BrowseModel> browseData = [
    BrowseModel(title: StringConstants.fashion, image: ImageConstants.fashion),
    BrowseModel(title: StringConstants.social, image: ImageConstants.social),
    BrowseModel(title: StringConstants.stories, image: ImageConstants.stories),
    BrowseModel(title: StringConstants.comedy, image: ImageConstants.comedy),
    BrowseModel(title: StringConstants.sports, image: ImageConstants.sports),
    BrowseModel(
        title: StringConstants.polistics, image: ImageConstants.polistics),
    BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
    BrowseModel(title: StringConstants.games, image: ImageConstants.game),
    BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
    BrowseModel(title: StringConstants.games, image: ImageConstants.game),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.h, right: 2.h),
        child: GridView.builder(
          padding: EdgeInsets.only(top: 3.h),
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: browseData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.0,
            crossAxisCount: 2,
            crossAxisSpacing: 0.2,
            mainAxisSpacing: 14.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            // print(browseData[index].image);
            // print(browseData[index].title);
            return SizedBox(
              height: 2.h,
              width: 2.w,
              child: Stack(
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 50.w,
                    child: Image.asset(
                      browseData[index].image!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                            height: 50.h,
                            width: 40.w,
                            color: Theme.of(context).focusColor)),
                  ),
                  Center(child: TitleText(text: browseData[index].title!))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
