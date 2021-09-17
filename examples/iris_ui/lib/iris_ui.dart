library iris_ui;

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'generated/l10n.dart';
import 'iris_ui.config.dart';

export 'src/pages/iris_page.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);

AppLocalizationDelegate get appLocalizationDelegate => S.delegate;
