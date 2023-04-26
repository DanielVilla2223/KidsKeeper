import 'package:flutter/material.dart';
import 'package:taller_investigacion/pages/create_user.dart';
import 'package:taller_investigacion/pages/login_page.dart';
import 'package:taller_investigacion/pages/user_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(title: 'Child Protection'),
        '/login': (context) => const Home(title: 'Child Protection'),
        '/create': (context) => const CreateUser(),
        '/user': (context) => const UserHome(),
      },
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/user',
    );
  }
}
