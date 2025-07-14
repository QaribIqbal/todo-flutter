class Todo {
  final String title;
  final String desc;
  bool isDone;
  Todo({
    required this.title,
    required this.desc,
    required this.isDone,
  });
  void toggleDone() {
    isDone = !isDone;
  }
}
