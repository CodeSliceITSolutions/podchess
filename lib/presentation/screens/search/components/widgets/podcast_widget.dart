import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:podchess_app/presentation/common_widgets/search_text.dart';
import 'package:sizer/sizer.dart';

class PodcastWidget extends StatelessWidget {
  PodcastWidget({Key? key}) : super(key: key);

  final List<BrowseModel> podcastData = [
    BrowseModel(
        title: StringConstants.dol1,
        image: ImageConstants.dol1,
        subTitle: StringConstants.sub1),
    BrowseModel(
        title: StringConstants.dol2,
        image: ImageConstants.dol2,
        subTitle: StringConstants.sub2),
    BrowseModel(
        title: StringConstants.dol3,
        image: ImageConstants.dol3,
        subTitle: StringConstants.sub3),
    BrowseModel(
        title: StringConstants.dol4,
        image: ImageConstants.dol4,
        subTitle: StringConstants.sub4),
    BrowseModel(
        title: StringConstants.dol5,
        image: ImageConstants.dol5,
        subTitle: StringConstants.sub5),
    BrowseModel(
        title: StringConstants.dol2,
        image: ImageConstants.dol2,
        subTitle: StringConstants.sub2),
    BrowseModel(
        title: StringConstants.dol3,
        image: ImageConstants.dol3,
        subTitle: StringConstants.sub3),
  ];

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      color: Theme
          .of(context)
          .primaryColorLight);

    return Expanded(
      child: ListView.builder(
          itemCount: podcastData.length,
          scrollDirection: Axis.vertical,
          //shrinkWrap: true,
          padding: EdgeInsets.only(top: 0.h),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h, bottom: 2.h),
              child: Container(
                decoration: boxDecor,
                height: 9.h,
                width: 25.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Image.asset(podcastData[index].image!),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h, top: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(podcastData[index].title!),
                          SizedBox(height: 1.h),
                          NeoText(text: podcastData[index].subTitle!),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
