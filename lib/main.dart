import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurschedule',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellowAccent,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const HomePage()));
                print('Login');
              },
              child: const Text('LoginPage'),

            ),
          )
    );
  }
}
