import 'package:flutter/material.dart';
import 'package:flutter_uis/uis/whatsapp_chats/chats.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF075E54),
        ),
      ),
      home: const WhatsAppTab(),
    );
  }
}

TextStyle customStyle = const TextStyle(fontSize: 19, fontWeight: FontWeight.w700);

class WhatsAppTab extends StatelessWidget {
  const WhatsAppTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width / 10;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF075E54),
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
            Icon(Icons.more_vert)
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            tabs: [
              SizedBox(
                width: yourWidth,
                child: const Icon(Icons.camera_alt),
              ),
              Container(
                width: yourWidth * 3,
                child: Text(
                  "CHATS",
                  style: customStyle,
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: yourWidth * 3,
                child: Text(
                  "STATUS",
                  style: customStyle,
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: yourWidth * 3,
                child: Text(
                  "CALLS",
                  style: customStyle,
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [Text("Camera"), ChatsList(), Text("Status"), Text("Calls")],
        ),
      ),
    );
  }
}
