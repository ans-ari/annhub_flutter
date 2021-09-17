import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/l10n.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.unexpected({
    Exception? exception,
  }) = _UnexpectedFailure;

  String get message => when(
        unexpected: (e) => e?.toString() ?? S.current.unexpected_error_occurred,
      );
}
