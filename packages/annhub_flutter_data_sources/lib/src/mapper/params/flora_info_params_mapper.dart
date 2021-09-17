import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_domain/data.dart' as domain;

import '../../params/iris/flora_info_params.dart' as data;

@injectable
class FloraInfoParamsMapper
    implements Mapper<domain.FloraInfoParams, data.FloraInfoParams> {
  const FloraInfoParamsMapper();

  @override
  data.FloraInfoParams map(domain.FloraInfoParams input) =>
      data.FloraInfoParams(data: input.data);
}
