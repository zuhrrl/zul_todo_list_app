import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zul_todo_list_app/model/task.dart' as task;
import 'package:zul_todo_list_app/model/task_model.dart';

class ApiService {
  static const host = 'https://ranispace.com';
  static const apiVersion = 'v1';
  static const baseUrl = '$host/api/$apiVersion';

  fetchTask() async {
    try {
      var url = '$baseUrl/user/task';
      var response = await http.get(Uri.parse(url));
      return json.decode(response.body);
    } catch (err) {}
  }

  deleteTask(TaskModel taskModel) async {
    try {
      var url = '$baseUrl/user/task/delete';
      var response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: json.encode(taskModel));

      debugPrint(json.encode(response.body));

      return json.decode(response.body);
    } catch (err) {}
  }

  updateTask(TaskModel taskModel) async {
    try {
      var url = '$baseUrl/user/task/update';
      var response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: json.encode({"id": taskModel.id, "is_done": taskModel.isDone}));

      debugPrint(json.encode(response.body));

      return json.decode(response.body);
    } catch (err) {}
  }

  addTask(TaskModel taskModel) async {
    debugPrint(json.encode(taskModel));
    try {
      var url = '$baseUrl/user/task/create';
      var response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: json.encode(taskModel));

      debugPrint(json.encode(response.body));

      return json.decode(response.body);
    } catch (err) {}
  }
}
