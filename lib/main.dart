import 'package:flutter/material.dart';
import 'package:telegram/utils/color.dart';
import 'package:telegram/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColor.primaryDark,
              titleTextStyle: TextStyle(color: AppColor.textColorLight)),
          scaffoldBackgroundColor: AppColor.primaryDark),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
