import 'package:core/config.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class AppModule {
  Logger get logger => Logger();

  @Named('baseUrl')
  String get baseUrl => Env.baseUrl;
}
