import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zul_todo_list_app/model/task_model.dart';
import 'package:zul_todo_list_app/provider/add_task_screen_provider.dart';
import 'package:zul_todo_list_app/provider/page_manager_provider.dart';
import 'package:zul_todo_list_app/screen/home_screen.dart';

class AddTaskSceen extends StatefulWidget {
  static const name = 'add-task-screen';

  const AddTaskSceen({super.key});

  @override
  State<AddTaskSceen> createState() => _AddTaskSceenState();
}

class _AddTaskSceenState extends State<AddTaskSceen> {
  final _formKey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Tugas'),
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Nama Tugas'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field tidak boleh kosong';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Memproses Data')),
                      );
                      Future.microtask(() => Provider.of<AddTaskScreenProvider>(
                                  context,
                                  listen: false)
                              .addTask(
                                  TaskModel(
                                      title: titleController.text,
                                      description: descriptionController.text,
                                      isDone: false), () {
                            final pageManager =
                                context.read<PageManagerProvider>();
                            pageManager.setAddSuccess(true);
                            Navigator.pop(context);
                          }));
                    }
                  },
                  child: const Text('Tambah Tugas'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
