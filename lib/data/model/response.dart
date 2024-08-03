class Response {
  Response({
    required this.status,
    required this.message,
    required this.data,
  });
  late final bool status;
  late final String message;
  late final dynamic data;

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }
}
