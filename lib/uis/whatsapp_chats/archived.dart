import 'package:flutter/material.dart';
import 'package:flutter_uis/uis/whatsapp_chats/chats.dart';

class Archived extends StatelessWidget {
  const Archived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: Text("Archived"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: ListView.builder(
          itemCount: dummyChats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(dummyChats[index].imagePath),
              ),
              title: Row(children: [
                Text(dummyChats[index].name),
                const Spacer(),
                Text(
                  dummyChats[index].lastMessageTime,
                  textScaleFactor: 0.85,
                )
              ]),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.done_all,
                    size: 16,
                  ),
                  Flexible(
                      child: Text(
                    "  " + dummyChats[index].lastMessage,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              ),
            );
          }),
    );
  }
}
