import 'package:Meditation/constants.dart';
import 'package:Meditation/screens/actionScreen.dart';
import 'package:Meditation/sessions-navigations/arm-navigation.dart';
import 'package:Meditation/sessions-navigations/dynamic-list.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/sessionCard.dart';
import 'package:flutter/material.dart';

class ArmWorkOut extends StatelessWidget {
  ArmWorkOut() {
    DynamicList.list = ArmWorkOutNavigator.list;
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
                  image: AssetImage("assets/images/arm.jpg"),
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
                        "Arm Work-out",
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
                          "Regular arm exercises not only build muscles but also reduce your risk of heart diseases and increases in blood flow.",
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
                                ArmWorkOutNavigator.list[0],),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[1],),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[2],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[3],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[4],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[5],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 7,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[6],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 8,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[7],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 9,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[8],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 10,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[9],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 11,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[10],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 12,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[11],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 13,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[12],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 14,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[13],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 15,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[14],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 16,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[15],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 17,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[16],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 18,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[17],),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 19,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                ArmWorkOutNavigator.list[18],),
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