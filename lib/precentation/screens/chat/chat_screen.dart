import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/precentation/providers/chat_providers.dart';
import 'package:yes_no_app/precentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/precentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/precentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/300?img=1'),
          ),
        ),
        title: const Center(child: Text('Chat')),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider
                    .chatScrollController, // controller se ammara al char.providers
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? const HerMessageBubble()
                      : MyMessageBuble(message: message);
                },
              ),
            ),
            MessageFieldBox(
              onValue: chatProvider.sendMessage,
            ), // llamar el metodo
          ],
        ),
      ),
    );
  }
}
