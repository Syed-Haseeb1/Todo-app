import 'package:todolist_app/splash.dart';
// ignore: unused_import
import 'package:todolist_app/notesdashboard.dart';
// ignore: unused_import
import 'package:todolist_app/task.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}