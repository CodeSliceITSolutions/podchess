part of 'podcast_bloc.dart';

@immutable
abstract class PodcastState {
  PodcastState({ this.eventState = BlocEventState.LOADING, this.list, this.message=''});

  BlocEventState eventState;
  List<BrowseModel>? list;
  String message;
}

class PodcastInitialState extends PodcastState {
  PodcastInitialState() : super(eventState: BlocEventState.LOADING);
}

class PodcastLoadedState extends PodcastState {
  final List<BrowseModel> podList;

  PodcastLoadedState({required this.podList})
      : super(list: podList, eventState: BlocEventState.LOADED);
}

class PodcastErrorState extends PodcastState {
  final String message;

  PodcastErrorState(this.message)
      : super(eventState: BlocEventState.ERROR, message: message);
}
