import 'package:Meditation/constants.dart';
import 'package:Meditation/sub-screens/stretch/lower-back-stretch.dart';
import 'package:Meditation/sub-screens/stretch/neck-shoulder-stretch.dart';
import 'package:Meditation/sub-screens/stretch/pre-sleep-stretch.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class BodyStretchScreen extends StatelessWidget {
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
                  image: AssetImage("assets/images/bodyStretching.jpg"),
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
                        "Body Stretch",
                        style: headerStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3-15 MIN Course",
                        style: subHeaderStyle,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Stretching is an extremely important practice to add to your daily routine to be on your way to better health.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      ContentCard(
                        title: "Pre-sleep Stretch", 
                        imageDir: "assets/images/pre-sleep-stretch.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PreSleepStretch(),),);
                        },
                      ),
                      ContentCard(
                        title: "Neck & Shoulder Stretch", 
                        imageDir: "assets/images/neck&shoulder.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeckShoulderStrech(),),);
                        },
                      ),
                      ContentCard(
                        title: "Lower Back Stretch", 
                        imageDir: "assets/images/lowerBackStretch.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LowerBackStrech(),),);
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