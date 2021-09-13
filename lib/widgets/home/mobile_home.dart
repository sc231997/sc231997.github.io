import 'package:flutter/cupertino.dart';

class MobileHome extends StatefulWidget {
  MobileHome({Key? key}) : super(key: key);

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Mobile Home"),
    );
  }
}
