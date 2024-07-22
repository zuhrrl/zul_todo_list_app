// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTask,
    required TResult Function(SocketModel data) handleSocketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTask,
    TResult? Function(SocketModel data)? handleSocketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTask,
    TResult Function(SocketModel data)? handleSocketEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTask value) fetchTask,
    required TResult Function(_HandleSocketEvent value) handleSocketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTask value)? fetchTask,
    TResult? Function(_HandleSocketEvent value)? handleSocketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTask value)? fetchTask,
    TResult Function(_HandleSocketEvent value)? handleSocketEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTaskImplCopyWith<$Res> {
  factory _$$FetchTaskImplCopyWith(
          _$FetchTaskImpl value, $Res Function(_$FetchTaskImpl) then) =
      __$$FetchTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTaskImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$FetchTaskImpl>
    implements _$$FetchTaskImplCopyWith<$Res> {
  __$$FetchTaskImplCopyWithImpl(
      _$FetchTaskImpl _value, $Res Function(_$FetchTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTaskImpl with DiagnosticableTreeMixin implements _FetchTask {
  const _$FetchTaskImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.fetchTask()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeScreenEvent.fetchTask'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTask,
    required TResult Function(SocketModel data) handleSocketEvent,
  }) {
    return fetchTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTask,
    TResult? Function(SocketModel data)? handleSocketEvent,
  }) {
    return fetchTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTask,
    TResult Function(SocketModel data)? handleSocketEvent,
    required TResult orElse(),
  }) {
    if (fetchTask != null) {
      return fetchTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTask value) fetchTask,
    required TResult Function(_HandleSocketEvent value) handleSocketEvent,
  }) {
    return fetchTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTask value)? fetchTask,
    TResult? Function(_HandleSocketEvent value)? handleSocketEvent,
  }) {
    return fetchTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTask value)? fetchTask,
    TResult Function(_HandleSocketEvent value)? handleSocketEvent,
    required TResult orElse(),
  }) {
    if (fetchTask != null) {
      return fetchTask(this);
    }
    return orElse();
  }
}

abstract class _FetchTask implements HomeScreenEvent {
  const factory _FetchTask() = _$FetchTaskImpl;
}

/// @nodoc
abstract class _$$HandleSocketEventImplCopyWith<$Res> {
  factory _$$HandleSocketEventImplCopyWith(_$HandleSocketEventImpl value,
          $Res Function(_$HandleSocketEventImpl) then) =
      __$$HandleSocketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketModel data});
}

/// @nodoc
class __$$HandleSocketEventImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$HandleSocketEventImpl>
    implements _$$HandleSocketEventImplCopyWith<$Res> {
  __$$HandleSocketEventImplCopyWithImpl(_$HandleSocketEventImpl _value,
      $Res Function(_$HandleSocketEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HandleSocketEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SocketModel,
    ));
  }
}

/// @nodoc

class _$HandleSocketEventImpl
    with DiagnosticableTreeMixin
    implements _HandleSocketEvent {
  const _$HandleSocketEventImpl({required this.data});

  @override
  final SocketModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.handleSocketEvent(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.handleSocketEvent'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleSocketEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleSocketEventImplCopyWith<_$HandleSocketEventImpl> get copyWith =>
      __$$HandleSocketEventImplCopyWithImpl<_$HandleSocketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTask,
    required TResult Function(SocketModel data) handleSocketEvent,
  }) {
    return handleSocketEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTask,
    TResult? Function(SocketModel data)? handleSocketEvent,
  }) {
    return handleSocketEvent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTask,
    TResult Function(SocketModel data)? handleSocketEvent,
    required TResult orElse(),
  }) {
    if (handleSocketEvent != null) {
      return handleSocketEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTask value) fetchTask,
    required TResult Function(_HandleSocketEvent value) handleSocketEvent,
  }) {
    return handleSocketEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTask value)? fetchTask,
    TResult? Function(_HandleSocketEvent value)? handleSocketEvent,
  }) {
    return handleSocketEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTask value)? fetchTask,
    TResult Function(_HandleSocketEvent value)? handleSocketEvent,
    required TResult orElse(),
  }) {
    if (handleSocketEvent != null) {
      return handleSocketEvent(this);
    }
    return orElse();
  }
}

abstract class _HandleSocketEvent implements HomeScreenEvent {
  const factory _HandleSocketEvent({required final SocketModel data}) =
      _$HandleSocketEventImpl;

  SocketModel get data;
  @JsonKey(ignore: true)
  _$$HandleSocketEventImplCopyWith<_$HandleSocketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeScreenState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeScreenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeScreenState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeScreenState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Task> allTask,
      List<Task> uncompletedTask,
      List<Task> completedTask,
      SocketModel? socketData});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTask = null,
    Object? uncompletedTask = null,
    Object? completedTask = null,
    Object? socketData = freezed,
  }) {
    return _then(_$LoadedImpl(
      allTask: null == allTask
          ? _value._allTask
          : allTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      uncompletedTask: null == uncompletedTask
          ? _value._uncompletedTask
          : uncompletedTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTask: null == completedTask
          ? _value._completedTask
          : completedTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      socketData: freezed == socketData
          ? _value.socketData
          : socketData // ignore: cast_nullable_to_non_nullable
              as SocketModel?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(
      {final List<Task> allTask = const [],
      final List<Task> uncompletedTask = const [],
      final List<Task> completedTask = const [],
      this.socketData})
      : _allTask = allTask,
        _uncompletedTask = uncompletedTask,
        _completedTask = completedTask;

  final List<Task> _allTask;
  @override
  @JsonKey()
  List<Task> get allTask {
    if (_allTask is EqualUnmodifiableListView) return _allTask;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTask);
  }

  final List<Task> _uncompletedTask;
  @override
  @JsonKey()
  List<Task> get uncompletedTask {
    if (_uncompletedTask is EqualUnmodifiableListView) return _uncompletedTask;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uncompletedTask);
  }

  final List<Task> _completedTask;
  @override
  @JsonKey()
  List<Task> get completedTask {
    if (_completedTask is EqualUnmodifiableListView) return _completedTask;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTask);
  }

  @override
  final SocketModel? socketData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.loaded(allTask: $allTask, uncompletedTask: $uncompletedTask, completedTask: $completedTask, socketData: $socketData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenState.loaded'))
      ..add(DiagnosticsProperty('allTask', allTask))
      ..add(DiagnosticsProperty('uncompletedTask', uncompletedTask))
      ..add(DiagnosticsProperty('completedTask', completedTask))
      ..add(DiagnosticsProperty('socketData', socketData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._allTask, _allTask) &&
            const DeepCollectionEquality()
                .equals(other._uncompletedTask, _uncompletedTask) &&
            const DeepCollectionEquality()
                .equals(other._completedTask, _completedTask) &&
            (identical(other.socketData, socketData) ||
                other.socketData == socketData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allTask),
      const DeepCollectionEquality().hash(_uncompletedTask),
      const DeepCollectionEquality().hash(_completedTask),
      socketData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(allTask, uncompletedTask, completedTask, socketData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(allTask, uncompletedTask, completedTask, socketData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allTask, uncompletedTask, completedTask, socketData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeScreenState {
  const factory _Loaded(
      {final List<Task> allTask,
      final List<Task> uncompletedTask,
      final List<Task> completedTask,
      final SocketModel? socketData}) = _$LoadedImpl;

  List<Task> get allTask;
  List<Task> get uncompletedTask;
  List<Task> get completedTask;
  SocketModel? get socketData;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeScreenState.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> allTask, List<Task> uncompletedTask,
            List<Task> completedTask, SocketModel? socketData)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeScreenState {
  const factory _Error() = _$ErrorImpl;
}
