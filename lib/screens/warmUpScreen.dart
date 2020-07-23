import 'package:Meditation/constants.dart';
import 'package:Meditation/sub-screens/warm-up/morning-warm-up.dart';
import 'package:Meditation/sub-screens/warm-up/post-run-cool-down.dart';
import 'package:Meditation/sub-screens/warm-up/pre-run-warm-up.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class WarmUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: BottomNavBar(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/warm-up.png"),
                  colorFilter: ColorFilter.mode(blendModeColor, BlendMode.darken),
                  fit: size.height > 500 ? BoxFit.fitHeight : BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                      ),
                      Text(
                        "Warm Up & Cool Down",
                        style: headerStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3-10 MIN Course",
                        style: subHeaderStyle,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "A warm up before any exercise or sports will help you avoid injury and have a great start!",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      ContentCard(
                        title: "Morning Warm Up", 
                        imageDir: "assets/images/morning-warm-up.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MorningWarmUp(),),);
                        },
                      ),
                      ContentCard(
                        title: "Pre-run Warm Up", 
                        imageDir: "assets/images/preRun.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PreRunWarmUP(),),);
                        },
                      ),
                      ContentCard(
                        title: "Post-run Cool Down", 
                        imageDir: "assets/images/postRun.jpeg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PostRunCoolDown(),),);
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}