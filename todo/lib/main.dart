import 'package:flutter/material.dart';
import './pages/homescreen.dart';

void
main() {
  runApp(
    const MyApp(),
  );
}

class MyApp
    extends
        StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      title: 'Project Todo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.deepPurple[200],
        textTheme: ThemeData.dark().textTheme, // 👈 Set a valid TextTheme
      ),
      home: const Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
