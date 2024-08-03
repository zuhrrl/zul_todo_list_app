import 'package:logger/web.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketio;
import 'package:zul_todo_list_app/service/constant.dart';

class SocketClient {
  static SocketClient? _socketClient;
  static socketio.Socket? _socket;

  SocketClient._internal() {
    _socketClient = this;
  }

  factory SocketClient() => _socketClient ?? SocketClient._internal();

  static void connectToSocket() {
    Logger().d("Connecting socket:${Constant.socketServer} ");
    _socket = socketio.io(
      Constant.socketServer,
      {
        'transports': ['websocket'],
        'reconnection': true,
        'autoConnect': true
      },
    );
    _socket!.connect();
    _socket!.onConnect((data) {
      Logger().d('Socket connected!');
    });
    _socket!.onerror((error) {
      Logger().e('Socket Error: $error');
    });
  }

  static initSocket() {
    connectToSocket();
  }

  static dispose() {
    _socket!.dispose();
  }

  static socketio.Socket getSocketClient() {
    if (_socket == null) {
      connectToSocket();
      return getSocketClient();
    }
    if (_socket!.connected) {
      return _socket!;
    }

    return _socket!;
  }
}
