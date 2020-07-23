import 'package:Meditation/constants.dart';
import 'package:Meditation/sessions-navigations/dynamic-list.dart';
import 'package:Meditation/sessions-navigations/post-run-navigation.dart';
import 'package:Meditation/widgets/bottom_nav_bar.dart';
import 'package:Meditation/widgets/sessionCard.dart';
import 'package:flutter/material.dart';

class PostRunCoolDown extends StatelessWidget {
  PostRunCoolDown() {
    DynamicList.list = PostRunNavigator.list;
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
                  image: AssetImage("assets/images/postRun.jpeg"),
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
                        "Post-run Cool Down",
                        style: headerStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3-10 MIN Course",
                        style: subHeaderStyle,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          "Don't just lie down after running. Follow these instruction carefully to let your body cool down.",
                          style: contextStyle,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .5,
                        height: 100.0,
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
                                  PostRunNavigator.list[0],
                                ),
                              );
                            }, 
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  PostRunNavigator.list[1],
                                ),
                              );
                            }, 
                          ), 
                          SeassionCard(
                            seassionNum: 3,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  PostRunNavigator.list[2],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  PostRunNavigator.list[3],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  PostRunNavigator.list[4],
                                ),
                              );
                            },
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            press: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                  PostRunNavigator.list[5],
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