import 'package:flutter/material.dart';
import 'package:ticket_booking/Screens/bottom_bar.dart';
import 'package:ticket_booking/util/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}
