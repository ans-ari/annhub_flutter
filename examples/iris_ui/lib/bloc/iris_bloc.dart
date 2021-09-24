import 'dart:async';

import 'package:annhub_flutter/annhub_flutter.dart';
import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
// import 'package:ml_predict/ml_predict.dart';

part 'iris_bloc.freezed.dart';
part 'iris_event.dart';

typedef IrisState = BaseState<String>;

@injectable
class IrisBloc extends Bloc<IrisEvent, IrisState> {
  final RequestIrisUseCase _requestIrisUseCase;

  IrisBloc({required RequestIrisUseCase requestIrisUseCase})
      : _requestIrisUseCase = requestIrisUseCase,
        super(const BaseState.initial()) {
    on<_GetIrisPrediction>(_mapGetIrisPredictionEvent);
  }

  FutureOr<void> _mapGetIrisPredictionEvent(
      _GetIrisPrediction event, Emitter<BaseState<String>> emit) async {
    emit(const BaseState.loading());
    final failureOrGotIris = await _requestIrisUseCase(
        FloraInfoParams(
          data: event.data,
        ),
        event.isCallARI);
    emit(_eitherLoadedOrErrorState(failureOrGotIris));
  }

  IrisState _eitherLoadedOrErrorState(
    Either<Failure, String> either,
  ) =>
      either.fold(
        (failure) => BaseState.error(failure: failure),
        (result) {
          Logger().i("Get iris success!");
          return BaseState.loaded(data: result);
        },
      );
}
