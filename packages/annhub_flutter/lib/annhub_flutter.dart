library annhub_flutter;

import 'package:core/core.dart' as core;
import 'package:cache/cache.dart' as cache;
import 'package:networking/networking.dart' as networking;
import 'package:annhub_flutter_data_sources/annhub_flutter_data_sources.dart'
    as annhub_flutter_data_sources;
import 'package:annhub_flutter_interactors/annhub_flutter_interactors.dart'
    as annhub_flutter_interactors;

export 'package:core/core.dart' hide configureDependencies;
export 'package:cache/cache.dart' hide configureDependencies;
export 'package:networking/networking.dart' hide configureDependencies;
export 'package:annhub_flutter_data_sources/annhub_flutter_data_sources.dart'
    hide configureDependencies;
export 'package:annhub_flutter_interactors/annhub_flutter_interactors.dart'
    hide configureDependencies;
export 'package:annhub_flutter_domain/annhub_flutter_domain.dart';
export 'package:annhub_flutter_domain/data.dart';
export 'package:networking/mapper.dart';
export 'package:networking/request_data.dart';
export 'package:networking/response_data.dart';

void configureDependencies() async {
  networking.configureDependencies();
  annhub_flutter_interactors.configureDependencies();
  annhub_flutter_data_sources.configureDependencies();
  core.configureDependencies();
  cache.configureDependencies();
}
