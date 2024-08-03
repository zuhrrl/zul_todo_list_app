import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_model.freezed.dart';
part 'socket_model.g.dart';

@freezed
class SocketModel with _$SocketModel {
  const factory SocketModel({
    required String channel,
    String? message_to,
    String? message_from,
    String? message,
    dynamic data,
  }) = _SocketModel;

  factory SocketModel.fromJson(Map<String, dynamic> json) =>
      _$SocketModelFromJson(json);
}
