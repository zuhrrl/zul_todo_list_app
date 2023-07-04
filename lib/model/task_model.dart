class TaskModel {
  TaskModel({
    this.id,
    this.title,
    this.description,
    this.isDone,
  });
  late final int? id;
  late final String? title;
  late final String? description;
  late final bool? isDone;

  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    isDone = json['is_done'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['description'] = description;
    _data['is_done'] = isDone;
    return _data;
  }
}
