import 'package:bloc/bloc.dart';

/// A cubit that ignores emits after it is closed, so an async call that
/// finishes after the screen is gone does not throw.
abstract class SafeCubit<State> extends Cubit<State> {
  SafeCubit(super.initialState);

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }
}
