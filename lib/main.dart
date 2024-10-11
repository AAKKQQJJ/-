import 'package:chatting_test/Screen/login_screen.dart';
import 'package:chatting_test/Screen/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screen/success_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/success' : (context) => const SuccessScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("채팅 앱"),
        ),
      ),
    );
  }
}
