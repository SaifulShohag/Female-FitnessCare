import 'package:Meditation/constants.dart';
import 'package:Meditation/screens/actionScreen.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/sessionCard.dart';
import '../../sessions-navigations/dynamic-list.dart';
import '../../sessions-navigations/butt-beginner-navigation.dart';
import 'package:flutter/material.dart';

class ButtBeginner extends StatelessWidget {
  ButtBeginner() {
    DynamicList.list = ButtBeginnerNavigator.list;
  }
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
                  image: AssetImage("assets/images/butt.jpg"),
                  colorFilter: ColorFilter.mode(blendModeColor, BlendMode.darken),
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
                        "Butt Beginner",
                        style: headerStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3-15 MIN Course",
                        style: subHeaderStyle,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          "Regular butt exercise can strengthen your hamstrings, which may help you run faster and more efficiently.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .5,
                        height: 50.0,
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SeassionCard(
                            seassionNum: 1,
                            isDone: true,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[0],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[1],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[2],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[3],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[4],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[5],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 7,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[6],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 8,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[7],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 9,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[8],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 10,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[9],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 11,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[10],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 12,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[11],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 13,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[12],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 14,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[13],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 15,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[14],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 16,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtBeginnerNavigator.list[15],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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