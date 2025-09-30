import 'package:flutter/material.dart';
import 'package:yes_no_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedcColor: 1).theme(),
      title: 'yes or no app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Material App Bar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () {},
            child: const Text('Soy un botón'),
          ),
        ),
      ),
    );
  }
}
