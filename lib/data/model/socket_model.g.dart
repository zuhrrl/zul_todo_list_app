// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketModelImpl _$$SocketModelImplFromJson(Map<String, dynamic> json) =>
    _$SocketModelImpl(
      channel: json['channel'] as String,
      message_to: json['message_to'] as String?,
      message_from: json['message_from'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$SocketModelImplToJson(_$SocketModelImpl instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'message_to': instance.message_to,
      'message_from': instance.message_from,
      'message': instance.message,
      'data': instance.data,
    };
