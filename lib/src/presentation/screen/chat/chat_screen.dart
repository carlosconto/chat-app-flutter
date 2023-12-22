import 'package:chat_app/src/presentation/widgets/chat/her_bubble_chat.dart';
import 'package:chat_app/src/presentation/widgets/chat/my_bubble_chat.dart';
import 'package:chat_app/src/presentation/widgets/shared/message_text_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/305'),
            )),
        title: const Text('Chat '),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? const HerBubbleChat()
                  : const MyBubbleMessage();
            },
          )),
          MessageTextField(),
        ]),
      ),
    );
  }
}
