import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/search_text.dart';
import 'package:sizer/sizer.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecor = BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.secondary);

    return Padding(
      padding: EdgeInsets.only(left: 4.h, right: 2.h),
      child: Row(
        children: [
          Container(
            width: 41.h,
            height: 6.h,
            decoration: boxDecor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(1.h, 2.h, 2.h, 3.h)),
                const NeoText(
                  text: StringConstants.searchProducts,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: SvgPicture.asset(ImageConstants.search,
                      color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
