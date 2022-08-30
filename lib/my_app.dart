import 'package:doctor_search/constants.dart';
import 'package:doctor_search/pages/begin_page.dart';
import 'package:doctor_search/pages/login_page.dart';
import 'package:doctor_search/pages/signature_page/signup-1.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Search',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => const BeginPage(),
        '/login-page': (context) => const LoginPage(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}
