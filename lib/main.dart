import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zul_todo_list_app/presentation/bloc/home_screen/home_screen_bloc.dart';
import 'package:zul_todo_list_app/presentation/pages/task_screen/add_task_screen.dart';
import 'package:zul_todo_list_app/presentation/pages/chat_screen/chat_screen.dart';
import 'package:zul_todo_list_app/presentation/pages/home_screen/home_screen.dart';
import 'package:zul_todo_list_app/injection.dart' as di;
import 'package:zul_todo_list_app/service/socket_client.dart';

void main() {
  di.init();
  SocketClient.initSocket();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<HomeScreenBloc>(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case HomeScreen.name:
              return MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              );

            case AddTaskSceen.name:
              return MaterialPageRoute(
                builder: (context) => const AddTaskSceen(),
              );
            case ChatScreen.name:
              return MaterialPageRoute(
                builder: (context) => ChatScreen(
                  socket: di.locator(),
                ),
              );
            default:
              return MaterialPageRoute(builder: (_) {
                return const Scaffold(
                  body: Center(
                    child: Text('Halaman tidak ditemukan :('),
                  ),
                );
              });
          }
        },
      ),
    );
  }
}
