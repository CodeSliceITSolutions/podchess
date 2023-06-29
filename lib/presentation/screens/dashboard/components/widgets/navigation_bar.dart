import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podchess_app/presentation/theme/app_color.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationItems extends StatefulWidget {
  BottomNavigationItems({super.key, required this.pageNumber, this.onChange});

  Function? onChange;
  final int pageNumber;

  List list = [
    ImageConstants.home,
    ImageConstants.search,
    ImageConstants.bookmarkSvg,
    ImageConstants.setting
  ];

  @override
  State<BottomNavigationItems> createState() => _BottomNavigationItemsState();
}

class _BottomNavigationItemsState extends State<BottomNavigationItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      height: 8.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).canvasColor,
          items: [
            BottomNavigationBarItem(
                label: StringConstants.emptyString,
                icon: SvgPicture.asset(ImageConstants.home,
                   // color: Theme.of(context).colorScheme.primary
                )
            ),
            BottomNavigationBarItem(
                label: StringConstants.emptyString,
                icon: SvgPicture.asset(ImageConstants.search,
                   // color: Theme.of(context).colorScheme.primary
                )),
            BottomNavigationBarItem(
                label: StringConstants.emptyString,
                icon: SvgPicture.asset(ImageConstants.bookmarkSvg,
                    color: Theme.of(context).colorScheme.primary
                )),
            BottomNavigationBarItem(
                label: StringConstants.emptyString,
                icon: SvgPicture.asset(ImageConstants.setting,
                   // color: Theme.of(context).colorScheme.primary
                ))
          ],
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
         // selectedIconTheme: const IconThemeData(color: Colors.blue),
          currentIndex: widget.pageNumber,
          onTap: (value) {
            widget.onChange!(value);
          },
        ),
      ),
    );
  }
}
