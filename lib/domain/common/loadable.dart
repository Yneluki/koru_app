import 'package:freezed_annotation/freezed_annotation.dart';

part 'loadable.freezed.dart';

@freezed
class LoadableValue<T, E> with _$LoadableValue<T, E> {
  const factory LoadableValue.data({
    required T data,
  }) = LoadableData<T, E>;
  const factory LoadableValue.loading() = LoadableLoading;
  const factory LoadableValue.error(E error) = LoadableError<T, E>;
}
