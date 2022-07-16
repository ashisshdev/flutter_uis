import 'package:flutter/material.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
            thickness: 1,
          );
        },
        itemCount: dummyChats.length,
        physics: const BouncingScrollPhysics(),
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
        });
  }
}

// generating a list of Dummy Chat Models
List<ChatModel> dummyChats = List<ChatModel>.generate(15, (i) {
  return ChatModel(names[i], "assets/images/uis/whatsapp_ui/persons/${i + 1}.jfif", "some Last Message", "12:45 PM");
});

List names = [
  "Sam",
  "John",
  "Christine",
  "Lily",
  "Charlie",
  "Jhonny",
  "Thomas",
  "Samuel",
  "Harry",
  "Strange",
  "Tony",
  "Steve",
  "Natasha",
  "Edward",
  "Karl"
];

class ChatModel {
  late String name;
  late String imagePath;
  late String lastMessage;
  late String lastMessageTime;

  ChatModel(this.name, this.imagePath, this.lastMessage, this.lastMessageTime);
}
