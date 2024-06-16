import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 100, 0, 250),
        child: Wrap(alignment: WrapAlignment.spaceEvenly, children: [
          Container(
            constraints: BoxConstraints(maxWidth: 600),
            child: Column(children: [
              Text(
                "Get In Touch",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 50),
              ),
              Container(height: 20),
              Text(
                  "If you are here you must have found something useful. My inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                  style: GoogleFonts.inter(fontSize: 17),
                  textAlign: TextAlign.center),
              Container(height: 50),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        width: 1,
                        color: Theme.of(context).secondaryHeaderColor)),
                onPressed: () async {
                  await launchUrlString("mailto:sc231997@gmail.com");
                },
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Say Hi!",
                      style: GoogleFonts.firaCode(
                          color: Theme.of(context).secondaryHeaderColor),
                    )),
              ),
            ]),
          ),
        ]));
  }
}
