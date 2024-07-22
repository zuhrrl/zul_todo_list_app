import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';
import 'package:zul_todo_list_app/bloc/bloc/home_screen_bloc.dart';
import 'package:zul_todo_list_app/constant/app_color.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketio;
import 'package:zul_todo_list_app/model/socket_model.dart';
import 'package:zul_todo_list_app/screen/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  static const name = 'home-screen';
  final socketio.Socket? socket;

  const HomeScreen({super.key, required this.socket});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void handleSocketEvent() {
    widget.socket!.on(
      'general',
      (data) {
        Logger().d(data);
        context.read<HomeScreenBloc>().add(
              HomeScreenEvent.handleSocketEvent(
                data: SocketModel.fromJson(data),
              ),
            );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      handleSocketEvent();
      context.read<HomeScreenBloc>().add(
            const HomeScreenEvent.fetchTask(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) => SafeArea(
          child: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (allTask, uncompletedTask, completedTask, socketData) =>
                SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tasklist',
                            style: GoogleFonts.ubuntu(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Tasklist',
                            style: GoogleFonts.ubuntu(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton.icon(
                          icon: const Icon(
                            Icons.add,
                            color: primaryColor,
                          ),
                          onPressed: () async {
                            Navigator.pushNamed(context, ChatScreen.name);

                            // final pageManager =
                            //     context.read<PageManagerProvider>();
                            // var addTask = await pageManager.waitForAddSuccess();
                            // provider.fetchTask();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor),
                          label: Text(
                            'Tambah Tugas',
                            style: GoogleFonts.ubuntu(
                                color: primaryColor, fontSize: 15),
                          )),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text("Response from socket: ${socketData?.message}"),
                  ),
                  SizedBox(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        ItemTopTitle(
                          title: 'Semua',
                          bgCounter: primaryColor,
                          counter: allTask.length.toString(),
                        ),
                        const VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        // ItemTopTitle(
                        //   title: 'Diselesaikan',
                        //   bgCounter: Colors.grey,
                        //   counter: provider.completeTask.length.toString(),
                        // ),
                        const VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        // ItemTopTitle(
                        //   title: 'Belum Selesai',
                        //   bgCounter: Colors.grey,
                        //   counter: provider.uncompletedTask.length.toString(),
                        // )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      var item = allTask[index];
                      return ItemCard(
                        id: item.id,
                        title: item.title,
                        description: item.description,
                        date: item.createdAt,
                        isDone: item.isDone == 1 ? true : false,
                      );
                    },
                    itemCount: allTask.length,
                    shrinkWrap: true,
                  )
                ],
              ),
            ),
            error: () => Container(),
          ),
        ),
      ),
    );
  }
}

class ItemTopTitle extends StatelessWidget {
  final String title;
  final String counter;
  final Color bgCounter;

  const ItemTopTitle(
      {super.key,
      required this.title,
      required this.bgCounter,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.ubuntu(fontSize: 15),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: bgCounter, borderRadius: BorderRadius.circular(20)),
          child: Text(
            counter,
            style: GoogleFonts.ubuntu(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final String date;
  final bool isDone;
  const ItemCard({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        decoration: isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.ubuntu(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const Spacer(),
              if (!isDone) ...[
                IconButton(
                    onPressed: () {
                      // provider.updateTask(TaskModel(id: id, isDone: true));
                    },
                    icon: const CircleAvatar(
                      radius: 12,
                      backgroundColor: primaryColor,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      ),
                    )),
              ]
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            color: Colors.grey,
            height: 2,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(
                date,
                style: GoogleFonts.ubuntu(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    // provider.removeTask(TaskModel(id: id));
                  },
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: primaryColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
