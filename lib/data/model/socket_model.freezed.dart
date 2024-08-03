// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketModel _$SocketModelFromJson(Map<String, dynamic> json) {
  return _SocketModel.fromJson(json);
}

/// @nodoc
mixin _$SocketModel {
  String get channel => throw _privateConstructorUsedError;
  String? get message_to => throw _privateConstructorUsedError;
  String? get message_from => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketModelCopyWith<SocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketModelCopyWith<$Res> {
  factory $SocketModelCopyWith(
          SocketModel value, $Res Function(SocketModel) then) =
      _$SocketModelCopyWithImpl<$Res, SocketModel>;
  @useResult
  $Res call(
      {String channel,
      String? message_to,
      String? message_from,
      String? message,
      dynamic data});
}

/// @nodoc
class _$SocketModelCopyWithImpl<$Res, $Val extends SocketModel>
    implements $SocketModelCopyWith<$Res> {
  _$SocketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? message_to = freezed,
    Object? message_from = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      message_to: freezed == message_to
          ? _value.message_to
          : message_to // ignore: cast_nullable_to_non_nullable
              as String?,
      message_from: freezed == message_from
          ? _value.message_from
          : message_from // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketModelImplCopyWith<$Res>
    implements $SocketModelCopyWith<$Res> {
  factory _$$SocketModelImplCopyWith(
          _$SocketModelImpl value, $Res Function(_$SocketModelImpl) then) =
      __$$SocketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channel,
      String? message_to,
      String? message_from,
      String? message,
      dynamic data});
}

/// @nodoc
class __$$SocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$SocketModelImpl>
    implements _$$SocketModelImplCopyWith<$Res> {
  __$$SocketModelImplCopyWithImpl(
      _$SocketModelImpl _value, $Res Function(_$SocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? message_to = freezed,
    Object? message_from = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SocketModelImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      message_to: freezed == message_to
          ? _value.message_to
          : message_to // ignore: cast_nullable_to_non_nullable
              as String?,
      message_from: freezed == message_from
          ? _value.message_from
          : message_from // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketModelImpl implements _SocketModel {
  const _$SocketModelImpl(
      {required this.channel,
      this.message_to,
      this.message_from,
      this.message,
      this.data});

  factory _$SocketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketModelImplFromJson(json);

  @override
  final String channel;
  @override
  final String? message_to;
  @override
  final String? message_from;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'SocketModel(channel: $channel, message_to: $message_to, message_from: $message_from, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketModelImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.message_to, message_to) ||
                other.message_to == message_to) &&
            (identical(other.message_from, message_from) ||
                other.message_from == message_from) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channel, message_to,
      message_from, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketModelImplCopyWith<_$SocketModelImpl> get copyWith =>
      __$$SocketModelImplCopyWithImpl<_$SocketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketModelImplToJson(
      this,
    );
  }
}

abstract class _SocketModel implements SocketModel {
  const factory _SocketModel(
      {required final String channel,
      final String? message_to,
      final String? message_from,
      final String? message,
      final dynamic data}) = _$SocketModelImpl;

  factory _SocketModel.fromJson(Map<String, dynamic> json) =
      _$SocketModelImpl.fromJson;

  @override
  String get channel;
  @override
  String? get message_to;
  @override
  String? get message_from;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$SocketModelImplCopyWith<_$SocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
