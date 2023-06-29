import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/divider_widget.dart';
import 'package:podchess_app/presentation/common_widgets/genres_text.dart';
import 'package:podchess_app/presentation/screens/search/components/widgets/search_widget.dart';
import 'package:sizer/sizer.dart';
import 'components/widgets/podcast_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      Padding(
        padding: EdgeInsets.only(left: 3.h, top: 8.h),
        child: Row(
          children: [
            const GenresText(text: StringConstants.searchName),
            Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: SvgPicture.asset(ImageConstants.close),
            ),
          ],
        ),
      ),
       SizedBox(height: 2.h),
      const DividerWidget(),
      Padding(
          padding: EdgeInsets.only(right: 30.h, top: 3.h),
          child: const GenresText(text: StringConstants.searchResult)),
          SizedBox(height: 1.h),
      const SearchScreenWidget(),
      Padding(
          padding: EdgeInsets.only(right: 32.h),
          child: const GenresText(text: StringConstants.podcast)),
          PodcastWidget(),
    ]);
  }
}
