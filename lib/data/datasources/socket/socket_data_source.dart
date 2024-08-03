import 'package:socket_io_client/socket_io_client.dart' as socketio;

abstract class SocketDataSource {
  void listenEvent(
      {required String eventName, required Function onReceivedEvent});
}

class SocketDataSourceImpl implements SocketDataSource {
  final socketio.Socket socket;

  SocketDataSourceImpl({required this.socket});

  @override
  void listenEvent(
      {required String eventName, required Function onReceivedEvent}) async {
    socket.on(eventName, (data) {
      onReceivedEvent(data);
    });
  }
}
