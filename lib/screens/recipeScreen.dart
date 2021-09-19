import 'package:Meditation/constants.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class DietRecipeScreen extends StatelessWidget {
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
                        "Diet Recipe",
                        style: headerStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "10-25 MIN recipe",
                        style: subHeaderStyle,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "A well-balanced diet provides you with energy and the nutrients you need for growth and repair.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      ContentCard(
                        title: "Comming Soon!", 
                        imageDir: "assets/images/full-body.png", 
                        onPress: null,
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