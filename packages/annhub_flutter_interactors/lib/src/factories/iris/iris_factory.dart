import 'package:get_it/get_it.dart';

import '../../../annhub_flutter_interactors.dart';

class IrisFactory {
  static RequestIrisUseCase get requestIrisUseCase =>
      GetIt.I.get<RequestIrisUseCase>();
}
