import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podchess_app/bloc/browse/browse_all_bloc.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/common/injector/injector.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:podchess_app/presentation/common_widgets/bloc_map_event.dart';
import 'package:podchess_app/presentation/common_widgets/stack_widget.dart';
import 'package:podchess_app/presentation/common_widgets/title_text.dart';
import 'package:sizer/sizer.dart';

class BrowseWidget extends StatelessWidget {
  BrowseWidget({
    Key? key,
  }) : super(key: key);


  BrowseAllBloc browseBloc = Injector.resolve<BrowseAllBloc>()
    ..add(GetBrowseAllEvent());

  @override
  Widget build(BuildContext context) {
    // final List<BrowseModel> browseData = [
    //   BrowseModel(
    //       title: StringConstants.fashion, image: ImageConstants.fashion),
    //   BrowseModel(title: StringConstants.social, image: ImageConstants.social),
    //   BrowseModel(
    //       title: StringConstants.stories, image: ImageConstants.stories),
    //   BrowseModel(title: StringConstants.comedy, image: ImageConstants.comedy),
    //   BrowseModel(title: StringConstants.sports, image: ImageConstants.sports),
    //   BrowseModel(
    //       title: StringConstants.polistics, image: ImageConstants.polistics),
    //   BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
    //   BrowseModel(title: StringConstants.games, image: ImageConstants.game),
    //   BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
    //   BrowseModel(title: StringConstants.games, image: ImageConstants.game),
    // ];

    return BlocBuilder<BrowseAllBloc, BrowseAllState>(
      bloc: browseBloc,
      builder: (context, state) => BlocMapToEvent(
          state: state.eventState,
          message: state.message,
          child: data(state, context)),
    );
  }

  Widget data(BrowseAllState state, BuildContext context) {
    List<BrowseModel>? browseAllList = state.list;

    return (browseAllList ?? "") == ""
        ? const SizedBox.shrink()
        : Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h),
              child: GridView.builder(
                padding: EdgeInsets.only(top: 0.h),
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: browseAllList!.length,
                // itemCount: browseData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2.0,
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.2,
                  mainAxisSpacing: 14.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                    width: 2.w,
                    child: BrowseStack(
                      image: '${browseAllList[index].image}',
                    text: browseAllList[index].title.toString(),
                  ),

                        // image: browseData[index].image!,
                        // text: browseData[index].title.toString()),
                  );
                },
              ),
            ),
          );
  }
}
