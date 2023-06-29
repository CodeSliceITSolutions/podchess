import 'package:kiwi/kiwi.dart';

//part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer container = KiwiContainer();

  static void setup() {
    container = KiwiContainer();
    //_$InjectorConfig()._configure();
  }

  // ignore: type_annotate_public_apis
  static final resolve = container.resolve;

  void _configure() {
    _configureBlocs();
    _configureUsecases();
    _configureRepositories();
    _configureRemoteDataSources();
    //_configureLocalDataSources();
    _configureCommon();
  }

  // ============ BLOCS ============

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

  void _configureCommon();

}
