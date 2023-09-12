import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://th.bing.com/th/id/R.f969944daf927066fb0d7036f56d812e?rik=C0jMQgKC%2b2F0xA&riu=http%3a%2f%2fes.web.img3.acsta.net%2fc_120_160%2fpictures%2f16%2f05%2f17%2f12%2f17%2f360795.jpg&ehk=lWPFp7r0i8hegCxxI8mYECrZoMS%2b6RCJCJ5BbS%2bZwWk%3d&risl=&pid=ImgRaw&r=0'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
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
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              })),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}