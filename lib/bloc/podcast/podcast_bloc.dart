import 'package:app_codeslice/common/constants/event_types.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';

part 'podcast_event.dart';

part 'podcast_state.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  PodcastBloc() : super(PodcastInitialState()) {
    on<PodcastEvent>(_init);
  }

  void _init(PodcastEvent event, Emitter<PodcastState> emit) async {
    emit(PodcastInitialState());

    if (event is GetPodcastEvent) {
      try {
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
        emit(PodcastLoadedState(podList: podcastData));
      } catch (ex) {
        emit(PodcastErrorState(ex.toString().replaceAll("Exception", '')));
      }
    }
  }
}
