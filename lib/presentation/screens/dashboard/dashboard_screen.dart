import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/genres_text.dart';
import 'package:podchess_app/presentation/common_widgets/search_text.dart';
import 'package:podchess_app/presentation/screens/dashboard/components/widgets/browse_all_widget.dart';
import 'package:podchess_app/presentation/screens/dashboard/components/widgets/search_widget.dart';
import 'package:sizer/sizer.dart';
import 'components/widgets/background_image_widget.dart';
import 'components/widgets/top_genres_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(50.h, 9.h, 20.h, 0.h)),
            const GenresText(text: StringConstants.search),
            SizedBox(height: 4.h),
            const SearchItem(),
            SizedBox(height: 4.h),
            Row(
              children: [
                dashboardPadding,
                const GenresText(text: StringConstants.genres),
                Padding(padding: EdgeInsets.only(right: 24.h)),
                const NeoText(
                  text: StringConstants.seeAll,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            TopGenresWidget(),
            browsePadding,
            SizedBox(height: 2.h),
            BrowseWidget(),
          ],
        ),
      ],
    );
  }

  get dashboardPadding => Padding(padding: EdgeInsets.only(left: 4.h));

  get browsePadding => Padding(
      padding: EdgeInsets.only(right: 31.h, top: 3.h),
      child: const GenresText(text: StringConstants.browseAll));
}
