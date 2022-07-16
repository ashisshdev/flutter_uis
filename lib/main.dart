import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uis/uis/whatsapp_chats/whatsapp_tabview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppTab(),
    );
  }
}
