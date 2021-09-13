import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 80, 0, 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Namaste! my name is",
            style: GoogleFonts.firaCode(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.w400),
          ),
          Container(height: 10),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Chandan Singh.",
              style:
                  GoogleFonts.inter(fontSize: 70, fontWeight: FontWeight.w600),
            ),
          ),
          Container(height: 5),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Your Friendly Developer.",
              style:
                  GoogleFonts.inter(fontSize: 70, fontWeight: FontWeight.w600),
            ),
          ),
          Container(height: 20),
          Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Text(
              "I’m a software engineer specializing in building (and occasionally hacking) new things. Currently, I’m focused on building accessible, human-centered products @ADP.",
              style: GoogleFonts.inter(),
            ),
          ),
          Container(height: 30),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                side:
                    BorderSide(width: 1, color: Theme.of(context).accentColor)),
            onPressed: () {},
            child: Text(
              "Resume",
              style: GoogleFonts.firaCode(color: Theme.of(context).accentColor),
            ),
          ),
        ],
      ),
    );
  }
}
