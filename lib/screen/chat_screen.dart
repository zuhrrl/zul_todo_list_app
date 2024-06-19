import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/web.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketio;

class ChatScreen extends StatefulWidget {
  static const name = 'chat-screen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final locator = GetIt.instance;
  socketio.Socket? socket;
  void handleSocketEvent() {
    socket = locator.get<socketio.Socket>();
    socket!.on('testmessage',
        (data) => {Logger().d('message coba dari chat screen $data')});
  }

  @override
  void initState() {
    handleSocketEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('chat screen'),
        ),
      ),
    );
  }
}
