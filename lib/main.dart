import 'package:flutter/material.dart';
import 'package:flutter_w10_3th_d09_ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter w10 3th d09 - UI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF1F1F1F),
        textTheme: const TextTheme(
          // Text 위젯에 적용되는 기본 스타일
          // fontsSize 는 디폴트 설정값 14임.
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const Home(),
    );
  }
}
