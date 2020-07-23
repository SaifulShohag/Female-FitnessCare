import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/warpSessionCards.dart';
import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: BottomNavBar(
        child: Stack(
          children: <Widget>[
            Container(
              height: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: size.height > 500 ? BoxFit.fitHeight : BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Meditation",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3-10 MIN Course",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          "Meditation is liberation of the mind from attachment to things it cannot control. Maintains a calm mind and sense of inner harmony through meditation.",
                        ),
                      ),
                      SizedBox(
                        width: size.width * .5,
                        height: 50.0,
                      ),
                      WarpSessionCards(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}