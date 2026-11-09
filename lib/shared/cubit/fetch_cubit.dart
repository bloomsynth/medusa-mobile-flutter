import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';

enum FetchStatus { initial, loading, success, failure }

class FetchState<T> extends Equatable {
  const FetchState({
    this.status = FetchStatus.initial,
    this.data,
    this.error,
    this.isRefreshing = false,
  });

  final FetchStatus status;
  final T? data;
  final String? error;
  final bool isRefreshing;

  bool get isLoading =>
      status == FetchStatus.initial || status == FetchStatus.loading;

  @override
  List<Object?> get props => [status, data, error, isRefreshing];
}

/// Loads one value from the Store API and keeps its loading, error and
/// pull-to-refresh state. Use it for read-only screens (a category list, an
/// order); state that is mutated, like the cart, gets its own cubit.
class FetchCubit<T> extends SafeCubit<FetchState<T>> {
  FetchCubit(this._fetch) : super(FetchState<T>());

  final Future<T> Function() _fetch;

  Future<void> load() async {
    emit(FetchState<T>(status: FetchStatus.loading, data: state.data));
    await _run();
  }

  /// Reloads while keeping the current data on screen.
  Future<void> refresh() async {
    emit(
      FetchState<T>(status: state.status, data: state.data, isRefreshing: true),
    );
    await _run();
  }

  Future<void> _run() async {
    try {
      emit(FetchState<T>(status: FetchStatus.success, data: await _fetch()));
    } on Exception catch (error) {
      emit(FetchState<T>(status: FetchStatus.failure, error: '$error'));
    }
  }
}
