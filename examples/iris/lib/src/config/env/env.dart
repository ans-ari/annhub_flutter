import 'package:envify/envify.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

const _envDir = 'lib/src/config/env/';

@Envify(
    path: kReleaseMode ? '$_envDir.env.production' : '$_envDir.env.development')
abstract class Env {
  static const key = _Env.key;
  static const baseUrl = _Env.baseUrl;
  static const appleSignInUrl = _Env.appleSignInUrl;
  static const serviceId = _Env.serviceId;
}
