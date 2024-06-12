import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final skills = [
    "AI & ML",
    "Flutter",
    "Angular",
    ".Net Core",
    "Python"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "About me",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Divider(
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Hello! My name is Chandan and I enjoy creating things that live on the internet. My interest in web development started back in 2012 when I decided to try editing custom Tumblr themes — turns out hacking together a custom reblog button taught me a lot about HTML & CSS!",
                  style: GoogleFonts.inter(fontSize: 15),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Fast-forward to today, and I’ve had the privilege of working at an advertising agency, a start-up, a huge corporation, and a student-led design studio. My main focus these days is building accessible, inclusive products and digital experiences @ADP for a variety of clients.",
                  style: GoogleFonts.inter(fontSize: 15),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "I also recently launched a course that covers everything you need to build a web app with the Spotify API using Node & React.",
                  style: GoogleFonts.inter(fontSize: 15),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Here are a few technologies I’ve been working with recently:",
                  style: GoogleFonts.inter(fontSize: 15),
                ),
                Container(
                  height: 20,
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 20,
                    ),
                    shrinkWrap: true,
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child:Icon(
                              Icons.play_arrow_outlined,
                              color: Theme.of(context).secondaryHeaderColor,
                              size: 10,
                            ),
                          ),
                          Text(skills[index])
                        ],
                      );
                    })
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
