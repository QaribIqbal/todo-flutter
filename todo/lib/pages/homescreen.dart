import 'package:flutter/material.dart';
import 'package:todo/pages/tasktile.dart';

class Homescreen
    extends
        StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<
    Homescreen
  >
  createState() => _HomescreenState();
}

class _HomescreenState
    extends
        State<
          Homescreen
        > {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Project Todo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary, // 👈 manually use theme color
      ),
      body: Center(
        child: Tasktile(),
      ),
    );
  }
}
