part of 'browse_all_bloc.dart';

@immutable
abstract class BrowseAllState {
  BrowseAllState(
      {this.eventState = BlocEventState.LOADING, this.list, this.message = ''});

  BlocEventState eventState;
  List<BrowseModel>? list;
  String message;
}

class BrowseInitialState extends BrowseAllState {
  BrowseInitialState() : super(eventState: BlocEventState.LOADING);
}

class BrowseLoadedState extends BrowseAllState {
  final List<BrowseModel> browseList;

  BrowseLoadedState({required this.browseList})
      : super(list: browseList, eventState: BlocEventState.LOADED);
}

class TopGenresLoadedState extends BrowseAllState {
  final List<BrowseModel> genList;
  TopGenresLoadedState({required this.genList})
  :super(list: genList, eventState: BlocEventState.LOADED);
}

class BrowseErrorState extends BrowseAllState {
  final String message;

  BrowseErrorState(this.message)
      : super(eventState: BlocEventState.ERROR, message: message);
}
