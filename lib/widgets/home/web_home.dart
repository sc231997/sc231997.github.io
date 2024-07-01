import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/about.dart';
import 'package:my_portfolio/widgets/contact.dart';
import 'package:my_portfolio/widgets/intro.dart';
import 'package:my_portfolio/widgets/job.dart';
import 'package:my_portfolio/widgets/project.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = GoogleFonts.firaCode();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.githubAlt),
                    iconSize: 20.0,
                    onPressed: () async {
                      await launchUrlString("https://github.com/sc231997",
                          webOnlyWindowName: "_blank");
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedinIn),
                    iconSize: 20.0,
                    onPressed: () async {
                      await launchUrlString(
                          "https://www.linkedin.com/in/chandan--singh",
                          webOnlyWindowName: "_blank");
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.xTwitter),
                    iconSize: 20.0,
                    onPressed: () async {
                      await launchUrlString("https://x.com/sc231997",
                          webOnlyWindowName: "_blank");
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    iconSize: 20.0,
                    onPressed: () async {
                      await launchUrlString(
                          "https://www.instagram.com/sc231997",
                          webOnlyWindowName: "_blank");
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 1,
                    height: 90,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                ],
              )),
          Expanded(
            flex: 8,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  floating: true,
                  leading: Icon(Icons.favorite_border),
                  centerTitle: true,
                  title: Row(
                    children: [
                      Expanded(flex: 5, child: Container()),
                      Expanded(
                        flex: 5,
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Tab(
                                child: Text(
                                  "About",
                                  style: _textStyle,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Experience",
                                  style: _textStyle,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Work",
                                  style: _textStyle,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Contact",
                                  style: _textStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  actions: [
                    IconButton(
                        onPressed: () =>
                            AdaptiveTheme.of(context).toggleThemeMode(),
                        icon: Icon(Icons.wb_sunny_outlined))
                  ],
                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        [Intro(), About(), Jobs(), Project(), Contact()])),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                      quarterTurns: 45,
                      child: SelectableText(
                        "sc231997@gmail.com",
                        style: _textStyle,
                        onTap: () async {
                          await launchUrlString("mailto:sc231997@gmail.com");
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 1,
                    height: 90,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
