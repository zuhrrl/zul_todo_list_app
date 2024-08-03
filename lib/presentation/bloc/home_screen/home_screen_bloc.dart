import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:zul_todo_list_app/data/model/socket_model.dart';
import 'package:zul_todo_list_app/data/model/task.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketio;
import 'package:zul_todo_list_app/domain/usecases/listen_socket_event_usecase.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final ListenSocketEventUsecase listenSocketEventUsecase;
  List<Task> allTask = [];

  HomeScreenBloc({required this.listenSocketEventUsecase})
      : super(const HomeScreenState.initial()) {
    on<HomeScreenEvent>((event, emit) async {
      emit(HomeScreenState.loading());
      emit(
        await event.when<Future<HomeScreenState>>(
          subscribeEvent: (eventName) async {
            Logger().d('SUBSCRIBE SOCKET EVENT ${eventName}');
            await listenSocketEventUsecase.execute(
              eventName: eventName,
              onReceivedEvent: (data) {
                var response = SocketModel.fromJson(data);
                Logger().d("RECEIVED EVENT: ${response.message}");
                add(HomeScreenEvent.handleSocketEvent(data: response));
              },
            );

            return const HomeScreenState.subscribeSocketEvent();
          },
          handleSocketEvent: (data) async {
            return HomeScreenState.loaded(
                allTask: List.of(allTask), socketData: data);
          },
          fetchTask: () async {
            await Future.delayed(Duration(seconds: 3), () {
              allTask.add(
                Task(
                    id: 1,
                    title: 'Judul',
                    description: 'Deskripsi',
                    isDone: 0,
                    createdAt: '2024-03-01'),
              );
            });

            return HomeScreenState.loaded(
              allTask: List.of(allTask),
              uncompletedTask: [],
              completedTask: [],
            );
          },
        ),
      );
    });
  }
}
