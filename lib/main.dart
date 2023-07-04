import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zul_todo_list_app/provider/add_task_screen_provider.dart';
import 'package:zul_todo_list_app/provider/home_screen_provider.dart';
import 'package:zul_todo_list_app/provider/page_manager_provider.dart';
import 'package:zul_todo_list_app/screen/add_task_screen.dart';
import 'package:zul_todo_list_app/screen/home_screen.dart';
import 'package:zul_todo_list_app/injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => di.locator<HomeScreenProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<AddTaskScreenProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<PageManagerProvider>(),
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
              default:
                return MaterialPageRoute(builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Halaman tidak ditemukan :('),
                    ),
                  );
                });
            }
          }),
    );
  }
}
