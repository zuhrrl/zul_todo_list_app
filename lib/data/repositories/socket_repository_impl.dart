import 'package:logger/web.dart';
import 'package:zul_todo_list_app/data/datasources/socket/socket_data_source.dart';
import 'package:zul_todo_list_app/domain/repositories/socket_repository.dart';

class SocketRepositoryImpl implements SocketRepository {
  final SocketDataSource socketDataSource;

  SocketRepositoryImpl({required this.socketDataSource});
  @override
  Future<void> listenEvent(
      {required String eventName, required Function onReceivedEvent}) async {
    try {
      socketDataSource.listenEvent(
        eventName: eventName,
        onReceivedEvent: onReceivedEvent,
      );
    } catch (err) {
      Logger().e(err);
    }
  }
}
