import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zul_todo_list_app/model/create_model.dart';
import 'package:zul_todo_list_app/model/delete_task.dart';
import 'package:zul_todo_list_app/model/task_model.dart';
import 'package:zul_todo_list_app/service/api_service.dart';

class AddTaskScreenProvider extends ChangeNotifier {
  final http.Client client;
  final ApiService apiService;

  AddTaskScreenProvider({required this.client, required this.apiService});

  addTask(TaskModel taskModel, Function() onSuccess) async {
    var response = await apiService.addTask(taskModel);
    CreateModel createModel = CreateModel.fromJson(response);
    if (createModel.status) {
      return onSuccess();
    }
  }
}
