import 'package:flutter/material.dart';

class Tasktile
    extends
        StatelessWidget {
  final String taskName;
  final String taskSub;
  final bool status;
  final VoidCallback onTap; // ✅ Add this

  const Tasktile({
    super.key,
    required this.taskName,
    required this.taskSub,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[400],
          borderRadius: BorderRadius.circular(
            16,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                0.3,
              ),
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 8,
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            taskName,
            style: TextStyle(
              color: Colors.white,
              decoration: status
                  ? TextDecoration.lineThrough
                  : null,
              decorationColor: status
                  ? Colors.green
                  : null,
              decorationThickness: status
                  ? 2.5
                  : null,
            ),
          ),
          subtitle: Text(
            taskSub,
            style: TextStyle(
              color: const Color.fromARGB(
                255,
                209,
                209,
                209,
              ),
              decoration: status
                  ? TextDecoration.lineThrough
                  : null,
              decorationColor: status
                  ? Colors.green
                  : null, // ✅ Line-through color
              decorationThickness: status
                  ? 2.5
                  : null, // ✅ Line thickness
            ),
          ),
          trailing: Icon(
            status
                ? Icons.check_box
                : Icons.check_box_outline_blank,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
