import 'package:flutter/material.dart';
import 'package:pms_app/views/auth/login_page.dart';
import 'package:pms_app/views/home/home_page.dart';
import 'package:pms_app/views/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}
