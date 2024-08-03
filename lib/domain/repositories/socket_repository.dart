abstract class SocketRepository {
  Future<void> listenEvent({
    required String eventName,
    required Function onReceivedEvent,
  });
}
