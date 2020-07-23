import 'package:Meditation/constants.dart';
import 'package:Meditation/sessions-navigations/dynamic-list.dart';
import '../../sessions-navigations/full-body-navigation.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/sessionCard.dart';
import 'package:flutter/material.dart';

class FullBody extends StatelessWidget {
  FullBody() {
    DynamicList.list = FullBodyNavigator.list;
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
                  image: AssetImage("assets/images/full-body.png"),
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
                        "Full Body Work-Out",
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
                          "A total-body workout routine will save you time and build muscle mass faster",
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
                                  FullBodyNavigator.list[0],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[1],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[2],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[3],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[4],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[5],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 7,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                FullBodyNavigator.list[6],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 8,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[7],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 9,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[8],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 10,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[9],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 11,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[10],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 12,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[11],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 13,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[12],  
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 14,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[13],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 15,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  FullBodyNavigator.list[14],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 16,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                FullBodyNavigator.list[15],
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