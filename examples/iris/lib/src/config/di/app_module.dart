import 'package:injectable/injectable.dart';
import 'package:iris/src/config/env/env.dart' as iris;

@module
abstract class AppModule {
  @Named('baseUrl')
  String get baseUrl => iris.Env.baseUrl;
}
