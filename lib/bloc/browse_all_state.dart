part of 'browse_all_bloc.dart';

@immutable
abstract class BrowseAllState {
  BrowseAllState(
      {this.eventState = BlocEventState.LOADING, this.message = "", this.list});

  BlocEventState eventState;
  List<BrowseModel>? list;
  String? message;
}

class BrowseInitialState extends BrowseAllState {
  BrowseInitialState() : super(eventState: BlocEventState.LOADING);
}

class BrowseLoadedState extends BrowseAllState {
  final List<BrowseModel> list;

  BrowseLoadedState({required this.list})
      : super(list: list, eventState: BlocEventState.LOADED);
}

class BrowseErrorState extends BrowseAllState {
  final String message;

  BrowseErrorState(this.message)
      : super(eventState: BlocEventState.ERROR, message: message);
}
