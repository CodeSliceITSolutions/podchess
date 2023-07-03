part of 'browse_all_bloc.dart';

@immutable
abstract class BrowseAllEvent {}

class GetBrowseAllEvent extends BrowseAllEvent {
  GetBrowseAllEvent();
}
class GetTopGenresEvent extends BrowseAllEvent {
  GetTopGenresEvent();
}
