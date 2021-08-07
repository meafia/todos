class Task {
  final String name;
  bool done;
  Task({
    required this.name,
    this.done: false,
  });

  void toggleDone() {
    print(done);
    done = !done;
    print(done);
  }
}
