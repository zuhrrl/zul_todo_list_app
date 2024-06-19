// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:zul_todo_list_app/model/delete_task.dart';
// import 'package:zul_todo_list_app/model/task.dart' as task;
// import 'package:zul_todo_list_app/model/task_model.dart';
// import 'package:zul_todo_list_app/model/udpate_task_model.dart';
// import 'package:zul_todo_list_app/service/api_service.dart';

// class HomeScreenProvider extends ChangeNotifier {
//   final http.Client client;
//   List<task.Task> allTask = [];
//   List<task.Task> completeTask = [];
//   List<task.Task> uncompletedTask = [];

//   final ApiService apiService;

//   HomeScreenProvider({required this.client, required this.apiService});

//   fetchTask() async {
//     var response = await apiService.fetchTask();
//     var taskModel = task.Task.fromJson(response);
//     if (taskModel.status) {
//       allTask = taskModel.data;
//       fetchCompletedTask();
//       fetchUncompletedTask();
//       notifyListeners();
//     }
//   }

//   fetchCompletedTask() {
//     completeTask.clear();
//     for (var task in allTask) {
//       if (task.isDone == 1) {
//         completeTask.add(task);
//       }
//     }
//     notifyListeners();
//   }

//   fetchUncompletedTask() {
//     uncompletedTask.clear();
//     for (var task in allTask) {
//       if (task.isDone == 0) {
//         uncompletedTask.add(task);
//       }
//     }
//     notifyListeners();
//   }

//   void addTask(task.Data task) {
//     allTask.add(task);
//     notifyListeners();
//   }

//   void removeTask(TaskModel taskModel) async {
//     var response = await apiService.deleteTask(taskModel);
//     DeleteTask deleteTask = DeleteTask.fromJson(response);
//     fetchTask();
//   }

//   void updateTask(TaskModel taskModel) async {
//     var response = await apiService.updateTask(taskModel);
//     UpdateTaskModel updateTask = UpdateTaskModel.fromJson(response);
//     fetchTask();
//   }
// }
