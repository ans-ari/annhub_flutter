import 'package:get_it/get_it.dart';

import '../../../annhub_flutter_interactors.dart';

class TextClassificationFactory {
  static GetTextClassificationUseCase get getTextClassificationUseCase =>
      GetIt.I.get<GetTextClassificationUseCase>();
}
