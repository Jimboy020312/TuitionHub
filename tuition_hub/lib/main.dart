import 'package:flutter/material.dart';
import 'package:tuition_hub/discover_screen.dart';
import 'package:tuition_hub/forgot_password_screen.dart';
import 'package:tuition_hub/login_screen.dart';
import 'package:tuition_hub/register_screen.dart';
import 'package:tuition_hub/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuition Hub',
      home: const WelcomeScreen(),
      routes: {
        '/Login Button': (context) => const LoginScreen(),
        '/Register Button': (context) => const RegisterScreen(),
        '/Forgot Password? Button': (context) => const ForgotPasswordScreen(),
        '/Login Successful Button': (context) => const DiscoverScreen(),
      },
    );
  }
}
