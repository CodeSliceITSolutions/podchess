import 'package:app_codeslice/common/http/acs_http_client.dart';
import 'package:kiwi/kiwi.dart';
import 'package:podchess_app/bloc/account/account_bloc.dart';
import 'package:podchess_app/bloc/browse/browse_all_bloc.dart';
import 'package:podchess_app/bloc/podcast/podcast_bloc.dart';

part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer container = KiwiContainer();

  static void setup() {
    container = KiwiContainer();
    _$InjectorConfig()._configure();
  }

  // ignore: type_annotate_public_apis
  static final resolve = container.resolve;

  void _configure() {
    _configureBlocs();
    // _configureUsecases();
    // _configureRepositories();
    // _configureRemoteDataSources();
    // //_configureLocalDataSources();
    _configureCommon();
  }

  // ============ BLOCS ============

  @Register.singleton(BrowseAllBloc)
  @Register.singleton(PodcastBloc)
  @Register.singleton(AccountBloc)
  void _configureBlocs();


  // ============ USECASES ============


  void _configureUsecases();

  // ============ REPOSITORIES ============

  void _configureRepositories();

  // ============ REMOTE DATASOURCES ============
  void _configureRemoteDataSources();

  // ============ LOCAL DATASOURCES ============
  //  @Register.singleton(ProductLocalDatasource)
  //  void _configureLocalDataSources();

  // ============ COMMON ============
  @Register.singleton(ACSHttpClient)
  void _configureCommon();

}
