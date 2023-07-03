import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_codeslice/common/constants/event_types.dart';
import 'package:podchess_app/common/constants/image_constants.dart';
import 'package:podchess_app/common/constants/string_constants.dart';
import 'package:podchess_app/data/model/browse_all_model.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitialState()) {
    on<AccountEvent>(_init);
  }

  void _init(AccountEvent event, Emitter<AccountState> emit) async {
    emit(AccountInitialState());

    if (event is GetAccountEvent) {
      try {
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
        ];

        emit(AccountLoadedState(accountList: accountData));
      } catch (ex) {
        emit(AccountErrorState(ex.toString().replaceAll("Exception", '')));
      }
    }
  }
}
