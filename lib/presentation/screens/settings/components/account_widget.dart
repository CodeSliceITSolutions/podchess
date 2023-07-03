import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:sizer/sizer.dart';

class AccountWidget extends StatelessWidget {
  AccountWidget({Key? key}) : super(key: key);

  final List<BrowseModel> accountData = [
    BrowseModel(
      title: StringConstants.accountSetting,
      image: ImageConstants.profile,
    ),
    BrowseModel(
      title: StringConstants.notification,
      image: ImageConstants.notification,
    ),
    BrowseModel(
      title: StringConstants.soundSetting,
      image: ImageConstants.volume,
    ),
    BrowseModel(
      title: StringConstants.privacy,
      image: ImageConstants.privacy,
    ),
    BrowseModel(
      title: StringConstants.favorites,
      image: ImageConstants.star,
    ),
    BrowseModel(
      title: StringConstants.screenTime,
      image: ImageConstants.clockSvg,
    ),
    BrowseModel(
      title: StringConstants.soundSetting,
      image: ImageConstants.volume,
    ),
    BrowseModel(
      title: StringConstants.privacy,
      image: ImageConstants.privacy,
    ),
    BrowseModel(
      title: StringConstants.accountSetting,
      image: ImageConstants.profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: accountData.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 0.h),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 1.h, top: 1.h),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                      height: 5.h,
                      width: 11.w,
                      color: Theme.of(context).primaryColorLight,
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(accountData[index].image!),
                      )),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(accountData[index].title!),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: SvgPicture.asset(ImageConstants.arrow),
                ),
              ),
            );
          }),
    );
  }
}
