import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/home/mobile_home.dart';
import 'package:my_portfolio/widgets/home/web_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return WebHome();
        if (constraints.maxWidth >= 1000) {
          return WebHome();
        } else {
          return MobileHome();
        }
      },
    );
  }
}
