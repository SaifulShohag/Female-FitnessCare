import 'package:Meditation/constants.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/sessionCard.dart';
import '../../sessions-navigations/dynamic-list.dart';
import '../../sessions-navigations/butt-advance-navigation.dart';
import 'package:flutter/material.dart';

class ButtAdvance extends StatelessWidget {
  ButtAdvance(){
    DynamicList.list = ButtAdvanceNavigator.list;
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
                        "Butt Advance",
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
                                  ButtAdvanceNavigator.list[0],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ButtAdvanceNavigator.list[1],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[2],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[3],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[4],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[5],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 7,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[6],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 8,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[7],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 9,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[8],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 10,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[9],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 11,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[10],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 12,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[11],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 13,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[12],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 14,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[13],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 15,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[14],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 16,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[15],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 17,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[16],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 18,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[17],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 19,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[18],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 20,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[19],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 21,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[20],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 22,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[21],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 23,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[22],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 24,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  ButtAdvanceNavigator.list[23],
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