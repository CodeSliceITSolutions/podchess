part of 'account_bloc.dart';

@immutable
abstract class AccountState {
  AccountState(
      {this.eventState = BlocEventState.LOADING, this.list, this.message = ''});

  BlocEventState eventState;
  List<BrowseModel>? list;
  String message;
}

class AccountInitialState extends AccountState {
  AccountInitialState() : super(eventState: BlocEventState.LOADING);
}

class AccountLoadedState extends AccountState {
  final List<BrowseModel> accountList;

  AccountLoadedState({required this.accountList})
      : super(list: accountList, eventState: BlocEventState.LOADED);
}

class AccountErrorState extends AccountState {
  final String message;

  AccountErrorState(this.message)
      : super(eventState: BlocEventState.ERROR, message: message);
}
