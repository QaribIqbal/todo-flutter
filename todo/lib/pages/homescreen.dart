import 'package:flutter/material.dart';
import 'package:todo/pages/tasktile.dart';
import 'package:todo/models/todo.dart';

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
  List<
    Todo
  >
  todos = [
    Todo(
      title: "Task1",
      desc: "Pending",
      isDone: false,
    ),
    Todo(
      title: "Task2",
      desc: "OverDue",
      isDone: false,
    ),
    Todo(
      title: "Task3",
      desc: "Pending",
      isDone: false,
    ),
    Todo(
      title: "Task4",
      desc: "Pending",
      isDone: true,
    ),
  ];
  // void toggleTodoStatus(
  //   int index,
  // ) {
  //   setState(
  //     () {
  //       todos[index].toggleDone();
  //     },
  //   );
  // }

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
        // leading: Drawer(),
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary, // 👈 manually use theme color
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder:
            (
              context,
              index,
            ) {
              final todo = todos[index];
              return Tasktile(
                taskName: todo.title,
                taskSub: todo.desc,
                status: todo.isDone,
                onTap: () => setState(
                  () {
                    todos[index].toggleDone();
                  },
                ),
              );
            },
      ),
      // TODO: Replace the following line with your actual button logic
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showDialog(
            context: context,
            builder:
                (
                  context,
                ) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(
                        3.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Add Task",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Title",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Desc",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple, // 🔵 Background color
                              foregroundColor: Colors.white, // ⚪ Text/Icon color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ), // 🟢 Rounded corners (optional)
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 18,
                              ), // spacing
                            ),
                            child: Text(
                              "Add Task",
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
          ),
        },
        // focusColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
