import 'package:get_it/get_it.dart';
import 'package:zul_todo_list_app/bloc/bloc/home_screen_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:zul_todo_list_app/service/api_service.dart';
import 'package:zul_todo_list_app/service/socket_client.dart';

final locator = GetIt.instance;

void init() {
  //bloc

  locator.registerFactory(
    () => HomeScreenBloc(
      socketClient: locator(),
    ),
  );

  // external
  locator.registerLazySingleton(
    () => http.Client(),
  );
  locator.registerLazySingleton(
    () => ApiService(),
  );

  locator.registerLazySingleton(
    () => SocketClient.getSocketClient(),
  );
}
