import 'package:Meditation/constants.dart';
import 'package:Meditation/sub-screens/work-out/abs-advance.dart';
import 'package:Meditation/sub-screens/work-out/abs-beginner.dart';
import 'package:Meditation/sub-screens/work-out/arm-work-out.dart';
import 'package:Meditation/sub-screens/work-out/butt-advance.dart';
import 'package:Meditation/sub-screens/work-out/butt-beginner.dart';
import 'package:Meditation/sub-screens/work-out/full-body.dart';
import 'package:Meditation/sub-screens/work-out/thigh-advance.dart';
import 'package:Meditation/sub-screens/work-out/thigh-beginner.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class WorkOutScreen extends StatelessWidget {
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
                  image: AssetImage("assets/images/body-work-out.png"),
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
                        "Body Work-Out",
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
                          "Working out every week atleast for 3 ~ 4 days will keep our body and mind healthy free of charge.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      ContentCard(
                        title: "Full Body", 
                        imageDir: "assets/images/full-body.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FullBody(),),);
                        },
                      ),
                      ContentCard(
                        title: "ABS Beginner", 
                        imageDir: "assets/images/abs.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AbsBeginner(),),);
                        },
                      ),
                      ContentCard(
                        title: "ABS Advance", 
                        imageDir: "assets/images/abs.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AbsAdvance(),),);
                        },
                      ),
                      ContentCard(
                        title: "Butt Beginner", 
                        imageDir: "assets/images/butt.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ButtBeginner(),),);
                        },
                      ),
                       ContentCard(
                        title: "Butt Advance", 
                        imageDir: "assets/images/butt.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ButtAdvance(),),);
                        },
                      ),
                      ContentCard(
                        title: "Arm Work-Out", 
                        imageDir: "assets/images/arm.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ArmWorkOut(),),);
                        },
                      ),
                      ContentCard(
                        title: "Thigh Beginner", 
                        imageDir: "assets/images/thigh.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThighBeginner(),),);
                        },
                      ),
                      ContentCard(
                        title: "Thigh Advance", 
                        imageDir: "assets/images/thigh.png", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThighAdvance(),),);
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