import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    yield* event.map(
        started: (e) async* {},
        increment: (e) async* {
          yield state.copyWith(count: state.count + 1);
        },
        decrement: (e) async* {
          yield state.copyWith(count: state.count - 1);
        });
  }
}
