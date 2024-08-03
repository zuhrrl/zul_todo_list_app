import 'package:get_it/get_it.dart';
import 'package:zul_todo_list_app/data/datasources/socket/socket_data_source.dart';
import 'package:zul_todo_list_app/data/repositories/socket_repository_impl.dart';
import 'package:zul_todo_list_app/domain/repositories/socket_repository.dart';
import 'package:zul_todo_list_app/domain/usecases/listen_socket_event_usecase.dart';
import 'package:zul_todo_list_app/presentation/bloc/home_screen/home_screen_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:zul_todo_list_app/service/api_service.dart';
import 'package:zul_todo_list_app/service/socket_client.dart';

final locator = GetIt.instance;

void init() {
  //bloc
  locator.registerFactory(
    () => HomeScreenBloc(
      listenSocketEventUsecase: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<SocketDataSource>(
    () => SocketDataSourceImpl(
      socket: locator(),
    ),
  );

  // repository
  locator.registerLazySingleton<SocketRepository>(
    () => SocketRepositoryImpl(
      socketDataSource: locator(),
    ),
  );

  // usecases
  locator.registerLazySingleton(
    () => ListenSocketEventUsecase(
      locator(),
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
