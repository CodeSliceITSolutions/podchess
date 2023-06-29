import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/presentation/common_widgets/genres_text.dart';
import 'package:podchess_app/presentation/common_widgets/search_text.dart';
import 'package:sizer/sizer.dart';

class SearchScreenWidget extends StatelessWidget {
  const SearchScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 1.h),
       SvgPicture.asset(ImageConstants.dolphinsvg),
       //  Padding(
       //    padding:  EdgeInsets.only(top: 1.h),
       //    child: Image.asset(ImageConstants.dol),
       //  ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GenresText(text: StringConstants.babyPesut),
              SizedBox(height: 1.h),
              const NeoText(text: StringConstants.eps)
            ],
          ),
        )
      ],
    );
  }
}
