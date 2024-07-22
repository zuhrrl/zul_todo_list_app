class SocketModel {
  SocketModel({
    required this.channel,
    required this.messageFrom,
    required this.message,
    this.data,
  });
  late final String channel;
  late final String messageFrom;
  late final String message;
  late final Null data;

  SocketModel.fromJson(Map<String, dynamic> json) {
    channel = json['channel'];
    messageFrom = json['message_from'];
    message = json['message'];
    data = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['channel'] = channel;
    _data['message_from'] = messageFrom;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }
}
