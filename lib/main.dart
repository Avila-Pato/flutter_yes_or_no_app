import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/precentation/providers/chat_providers.dart';
import 'package:yes_no_app/precentation/screens/chat/chat_screen.dart';
import 'package:yes_no_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      // MultiProvider es un widget que nos permite proveer multiples providers
      // de esa manera nos ayuda a evitar la repeticion de codigo
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedcColor: 4).theme(),
        title: 'yes or no app',
        home: const ChatScreen(),
      ),
    );
  }
}
