import 'package:flutter/material.dart';
import 'package:pizza_delivery_ui/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Hut',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // inputDecorationTheme: InputDecorationTheme(
        //   enabledBorder: const OutlineInputBorder(
        //     borderSide: BorderSide(width: 3.8, color: Colors.blue),
        //   ),
        //   focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(20.0),
        //       borderSide:
        //           const BorderSide(width: 2.0, color: Color(0xffdfdfdf))),
        // ),
      ),
      home: const SplashScreen(),
    );
  }
}
