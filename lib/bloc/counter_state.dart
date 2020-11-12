part of 'counter_bloc.dart';

@freezed
abstract class CounterState with _$CounterState {
  factory CounterState.initial() => CounterState(count: 0);
  const factory CounterState({int count}) = _CounterState;
}
