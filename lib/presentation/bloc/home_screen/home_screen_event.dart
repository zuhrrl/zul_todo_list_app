part of 'home_screen_bloc.dart';

@freezed
sealed class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.fetchTask() = _FetchTask;
  const factory HomeScreenEvent.subscribeEvent({required String eventName}) =
      _ListenSocketEvent;
  const factory HomeScreenEvent.handleSocketEvent({required SocketModel data}) =
      _HandleSocketEvent;
}
