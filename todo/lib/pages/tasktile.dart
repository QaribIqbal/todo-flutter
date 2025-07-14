import 'package:flutter/material.dart';

class Tasktile
    extends
        StatelessWidget {
  const Tasktile({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(
              255,
              255,
              182,
              24,
            ), // 👈 move tileColor here
            borderRadius: BorderRadius.circular(
              46,
            ),
          ),
          child: ListTile(
            // tileColor: const Color.fromARGB(
            //   255,
            //   255,
            //   182,
            //   24,
            // ),
            title: Text(
              'Task 1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Pending',
              style: TextStyle(
                color: const Color.fromARGB(
                  255,
                  209,
                  209,
                  209,
                ),
              ),
            ),
            leading: Icon(
              Icons.check_box_outline_blank,
            ),
          ),
        ),
      ),
    );
  }
}
