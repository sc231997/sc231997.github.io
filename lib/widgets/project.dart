import 'package:flutter/cupertino.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Text("Projects");
  }
}
