class Task {
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
    required this.createdAt,
    this.updatedAt,
  });
  late final int id;
  late final String title;
  late final String description;
  late final int isDone;
  late final String createdAt;
  late final String? updatedAt;

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    isDone = int.parse(json['is_done']);
    createdAt = json['created_at'];
    updatedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['description'] = description;
    _data['is_done'] = isDone;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
