import 'package:zul_todo_list_app/domain/repositories/socket_repository.dart';

class ListenSocketEventUsecase {
  final SocketRepository repository;

  ListenSocketEventUsecase(this.repository);

  Future<void> execute(
      {required String eventName,
      required Function(dynamic data) onReceivedEvent}) {
    return repository.listenEvent(
      eventName: eventName,
      onReceivedEvent: onReceivedEvent,
    );
  }
}
