part of 'home_screen_bloc.dart';

@freezed
sealed class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;
  const factory HomeScreenState.loading() = _Loading;
  const factory HomeScreenState.loaded({
    @Default([]) List<Task> allTask,
    @Default([]) List<Task> uncompletedTask,
    @Default([]) List<Task> completedTask,
    SocketModel? socketData,
  }) = _Loaded;
  const factory HomeScreenState.error() = _Error;
}
