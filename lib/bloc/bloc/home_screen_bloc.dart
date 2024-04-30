import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zul_todo_list_app/model/task.dart';
import 'package:zul_todo_list_app/screen/home_screen.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenState.initial()) {
    on<HomeScreenEvent>((event, emit) async {
      emit(HomeScreenState.loading());
      emit(
        await event.when<Future<HomeScreenState>>(
          fetchTask: () async {
            await Future.delayed(
              Duration(seconds: 6),
            );

            return HomeScreenState.loaded(
              allTask: [
                Task(
                    id: 1,
                    title: 'Test',
                    description: 'Test desc',
                    isDone: 0,
                    createdAt: '2024-01-01'),
                Task(
                    id: 1,
                    title: 'Test',
                    description: 'Test desc',
                    isDone: 0,
                    createdAt: '2024-01-01'),
                Task(
                    id: 1,
                    title: 'Test',
                    description: 'Test desc',
                    isDone: 0,
                    createdAt: '2024-01-01'),
              ],
              uncompletedTask: [],
              completedTask: [],
            );
          },
        ),
      );
    });
  }
}
