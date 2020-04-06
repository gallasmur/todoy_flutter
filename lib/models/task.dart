class Task {
  String title;
  bool state;

  Task({this.title, this.state = false});

  void toggleState() {
    state = !state;
  }
}
