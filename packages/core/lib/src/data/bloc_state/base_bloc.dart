import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core.dart';

part 'base_bloc.freezed.dart';
part 'base_event.dart';
part 'base_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(const BaseState.initial());

  @override
  Stream<BaseState> mapEventToState(
    BaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
