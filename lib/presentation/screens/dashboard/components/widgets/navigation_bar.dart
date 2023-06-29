import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationItems extends StatefulWidget {
  const BottomNavigationItems(
      {super.key, required this.pageNumber, this.onChange});

  final Function? onChange;
  final int pageNumber;

  @override
  State<BottomNavigationItems> createState() => _BottomNavigationItemsState();
}

class _BottomNavigationItemsState extends State<BottomNavigationItems> {

  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        label: StringConstants.emptyString,
        icon: SvgPicture.asset(
          ImageConstants.home,
        )),
    BottomNavigationBarItem(
        label: StringConstants.emptyString,
        icon: SvgPicture.asset(
          ImageConstants.search,
        )),
    BottomNavigationBarItem(
        label: StringConstants.emptyString,
        icon: SvgPicture.asset(
          ImageConstants.bookmarkSvg,
        )),
    BottomNavigationBarItem(
        label: StringConstants.emptyString,
        icon: SvgPicture.asset(
          ImageConstants.setting,
        ))
  ];

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
          items: _bottomNavigationBarItems.map((e) => e).toList(),
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
