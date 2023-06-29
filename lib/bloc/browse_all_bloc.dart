import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';
import 'package:app_codeslice/common/constants/event_types.dart';

part 'browse_all_event.dart';

part 'browse_all_state.dart';

class BrowseAllBloc extends Bloc<BrowseAllEvent, BrowseAllState> {
  BrowseAllBloc() : super(BrowseInitialState()) {
    on<BrowseAllEvent>(_init);
  }

  void _init(BrowseAllEvent event, Emitter<BrowseAllState> emit) async {
    emit(BrowseInitialState());

    if (event is GetBrowseAllEvent) {
      try {
        final List<BrowseModel> browseData = [
          BrowseModel(
              title: StringConstants.fashion, image: ImageConstants.fashion),
          BrowseModel(
              title: StringConstants.social, image: ImageConstants.social),
          BrowseModel(
              title: StringConstants.stories, image: ImageConstants.stories),
          BrowseModel(
              title: StringConstants.comedy, image: ImageConstants.comedy),
          BrowseModel(
              title: StringConstants.sports, image: ImageConstants.sports),
          BrowseModel(
              title: StringConstants.polistics,
              image: ImageConstants.polistics),
          BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
          BrowseModel(title: StringConstants.games, image: ImageConstants.game),
          BrowseModel(title: StringConstants.happy, image: ImageConstants.boy),
          BrowseModel(title: StringConstants.games, image: ImageConstants.game),
        ];

        emit(BrowseLoadedState(list: browseData));
      } catch (ex) {
        emit(BrowseErrorState(ex.toString().replaceAll("Exception:", '')));
      }
    }

    
    if (event is GetBrowseAllEvent) {
      try {
        final List<BrowseModel> topGenresData = [
          BrowseModel(
              title: StringConstants.music, image: ImageConstants.music),
          BrowseModel(
              title: StringConstants.funny, image: ImageConstants.funny),
          BrowseModel(
              title: StringConstants.stories, image: ImageConstants.stories),
        ];

        emit(BrowseLoadedState(list: topGenresData));
      } catch (ex) {
        emit(BrowseErrorState(ex.toString().replaceAll("Exception:", '')));
      }
    }
  }
}
