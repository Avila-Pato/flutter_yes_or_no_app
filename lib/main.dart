import 'package:flutter/material.dart';
import 'package:yes_no_app/precentation/screens/chat/chat_screen.dart';
import 'package:yes_no_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedcColor: 4).theme(),
      title: 'yes or no app',
      home: const ChatScreen(),
    );
  }
}
