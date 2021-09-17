part of 'base_bloc.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.initial() = Initial;
  const factory BaseState.loading() = Loading;
  const factory BaseState.error({required Failure failure}) = Error;
  const factory BaseState.loaded({required T data}) = Loaded<T>;
  const factory BaseState.success() = Success;
}
