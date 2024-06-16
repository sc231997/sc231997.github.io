import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/job_experience.dart';
import 'package:tab_container/tab_container.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    List<Widget> jobExperienceWidget = [];
    List<JobExperience> jobExperiences = <JobExperience>[
      JobExperience(
          company: 'Qualcomm',
          role: 'Senior Software Engineer',
          duration: 'July 2022 - Present',
          url: 'https://www.qualcomm.com',
          experience: [
            "Developing and Maintenance of automation framework and tools which helps in testing of Android and Linux based systems for power and performance.",
          ]),
      JobExperience(
          company: 'ADP',
          role: 'Software Engineer',
          duration: 'August 2022 - July 2022',
          url: 'https://www.adp.com',
          experience: [
            "Worked on iHCM one of the strategic products of ADP. Was responsible for developing solutions to reduce human effort and streamline the whole client onboarding process. As part of this, I got the chance to design and develop the microservice architecture as well.",
            "Created test automation framework with NodeJs as back-end and React at the front-end. Used ExpressJs for creating Restful API. Developed the whole CI/CD pipeline for this project using Jenkin.",
            "Test automation for Android applications was developed using Appium and Java. It was built on the BDD approach with the help of Cucumber.",
          ]),
      JobExperience(
          company: 'Faydio',
          role: 'Developer',
          duration: 'July 2018 - May 2019',
          url: 'https://www.linkedin.com/company/fraydio/',
          experience: [
            "Developed, maintained, and shipped production code for an Android application and its backend primarily using Java and Javascript.",
            "Android application was developed with MVVM architecture. In backend used Firebase services for authentication, storage, database, cloud messaging and analytics.",
            "Implementation Elastic Search from scratch for users to search for other users in the app and also the share audio post feature that allows to listen to audio even without installation of the app.",
          ])
    ];

    for (var jobExperience in jobExperiences) {
      List<Widget> experiences = [];
      for (var experience in jobExperience.experience) {
        experiences.add(const SizedBox(height: 20.0));
        experiences.add(Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.play_arrow_outlined,
                color: Theme.of(context).secondaryHeaderColor,
                size: 10,
              ),
            ),
            Expanded(
                child: Text(
              experience,
              style: GoogleFonts.inter(fontSize: 15),
            ))
          ],
        ));
      }
      jobExperienceWidget.add(SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${jobExperience.role} ',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '@${jobExperience.company}',
                      style: GoogleFonts.inter(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 20.0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async => await launchUrlString(
                            jobExperience.url,
                            webOnlyWindowName: "_blank"),
                    ),
                  ]),
                )
              ],
            ),
            Text(
              jobExperience.duration,
              style: GoogleFonts.firaCode(fontSize: 13),
            ),
            for (var experience in experiences) experience
          ],
        ),
      ));
    }
    ;

    return Container(
        margin: EdgeInsets.fromLTRB(0, 100, 0, 250),
        child: Wrap(alignment: WrapAlignment.spaceEvenly, children: [
          Container(
            constraints: BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Where I've Worked",
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
                LayoutBuilder(builder: (context, constraints) {
                  return TabContainer(
                      tabEdge: (constraints.maxWidth >= 800)
                          ? TabEdge.left
                          : TabEdge.top,
                      color: Color(0xff233554),
                      tabExtent: 100,
                      childPadding: const EdgeInsets.all(20.0),
                      selectedTextStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 15.0,
                      ),
                      unselectedTextStyle: TextStyle(
                        fontSize: 13.0,
                        color: DefaultTextStyle.of(context).style.color,
                      ),
                      tabs: [
                        for (var jobExperience in jobExperiences)
                          Text(jobExperience.company)
                      ],
                      children: jobExperienceWidget);
                }),
              ],
            ),
          )
        ]));
  }
}
