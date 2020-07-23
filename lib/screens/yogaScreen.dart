import 'package:Meditation/constants.dart';
import 'package:Meditation/sub-screens/yoga/back-yoga.dart';
import 'package:Meditation/sub-screens/yoga/balance-yoga.dart';
import 'package:Meditation/sub-screens/yoga/beginner-yoga.dart';
import 'package:Meditation/sub-screens/yoga/core-yoga.dart';
import 'package:Meditation/sub-screens/yoga/morning-yoga.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class YogaScreen extends StatelessWidget {
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
                  image: AssetImage("assets/images/yoga.jpg"),
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
                        "Yoga",
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
                          "Yoga is a group of physical, mental, and spiritual practices or disciplines that is benificial for all.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      ContentCard(
                        title: "Beginner Yoga", 
                        imageDir: "assets/images/beginner-Yoga.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => BeginnerYoga(),
                          ),);
                        },
                      ),
                      ContentCard(
                        title: "Morning Yoga", 
                        imageDir: "assets/images/morning-yoga.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MorningYoga(),
                          ),);
                        },
                      ),
                       ContentCard(
                        title: "Balance Yoga", 
                        imageDir: "assets/images/balance-yoga.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => BalanceYoga(),
                          ),);
                        },
                      ),
                      ContentCard(
                        title: "Core Yoga", 
                        imageDir: "assets/images/core-yoga.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CoreYoga(),
                          ),);
                        },
                      ),
                      ContentCard(
                        title: "Back Yoga", 
                        imageDir: "assets/images/back-yoga.jpg", 
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => BackYoga(),
                          ),);
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