import 'package:get_it/get_it.dart';
import 'package:zul_todo_list_app/provider/add_task_screen_provider.dart';
import 'package:zul_todo_list_app/provider/home_screen_provider.dart';
import 'package:http/http.dart' as http;
import 'package:zul_todo_list_app/provider/page_manager_provider.dart';
import 'package:zul_todo_list_app/service/api_service.dart';

final locator = GetIt.instance;

void init() {
  // // provider
  // locator.registerFactory(
  //     () => HomeScreenProvider(client: locator(), apiService: locator()));
  // locator.registerFactory(
  //     () => AddTaskScreenProvider(client: locator(), apiService: locator()));
  // locator.registerFactory(() => PageManagerProvider());

  // external
  locator.registerLazySingleton(() => http.Client());
  locator.registerLazySingleton(() => ApiService());
}
