import 'package:flutter/material.dart';


import 'Login.dart';
void main()
{
   runApp(MyApp());
}
class MyApp extends StatelessWidget
{
   MyApp({super.key});

  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      color: Colors.blueGrey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(),
    );
  }
}