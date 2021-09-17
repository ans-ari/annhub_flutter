library annhub_flutter_interactors;

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_interactors/annhub_flutter_interactors.config.dart';

export 'src/iris/request_iris_usecase.dart';
export 'src/text_classification/get_text_classification.dart';

export 'src/factories/iris/iris_factory.dart';
export 'src/factories/text_classification/text_classification_factory.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);
