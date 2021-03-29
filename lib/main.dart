import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/photos/pic.jpg",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hi there! My name is",
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Subrata paul",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              ' A Google Developer for Flutter,Dart.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              ' I am also a youtuber having SHADOW gaming youtube chanel.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              ' Skills',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: _buildSkillRow(
                "C",
                0.6,
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: _buildSkillRow("Html", 0.3),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: _buildSkillRow("Css", 0.4),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: _buildSkillRow("Flutter", 0.2),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    "assets/photos/download.jpg",
                    height: 20,
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  onTap: () {
                    htmlOpenfacebook();
                  },
                  child: Image.asset(
                    "assets/photos/facebook.png",
                    height: 20,
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  onTap: () {
                    htmlOpenyoutube();
                  },
                  child: Image.asset(
                    "assets/photos/images.png",
                    height: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 300.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "subratapaul.jbhm@gmail.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "8240014925",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void htmlOpenfacebook() {
  String url = "https://www.facebook.com/profile.php?id=100011457565221";
  html.window.open(url, 'facebook');
}

void htmlOpenGithub() {
  String url = "https://github.com/subrata912";
  html.window.open(url, 'github');
}

void htmlOpenyoutube() {
  String url = "https://www.youtube.com/channel/UC9hxmtRjI9tPR8brrtVI_lw";
  html.window.open(url, 'youtube');
}

void htmlOpenresume() {
  String url = "https://www.google.com/";
  html.window.open(url, 'resume');
}

Row _buildSkillRow(String skill, double level) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 16.0),
      Expanded(
          flex: 2,
          child: Text(
            skill.toUpperCase(),
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white),
          )),
      SizedBox(width: 16.0),
      Expanded(
        flex: 3,
        child: LinearProgressIndicator(
          value: level,
        ),
      ),
      SizedBox(width: 16.0),
    ],
  );
}
