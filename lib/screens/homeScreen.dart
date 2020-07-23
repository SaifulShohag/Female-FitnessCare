import 'package:Meditation/constants.dart';
import 'package:flutter/material.dart';
import '../screens/meditationScreen.dart';
import '../screens/recipeScreen.dart';
import '../screens/warmUpScreen.dart';
import '../screens/workOutScreen.dart';
import '../screens/bodyStretchScreen.dart';
import '../services/notification.service.dart';
import '../widgets/category_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../screens/yogaScreen.dart';

class HomeScreen extends StatelessWidget {
  final NotificationManager manager = NotificationManager();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Fitness & Guidlines",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: BottomNavBar(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Text(
                          "Hi! H_Houtarou",
                          style: greetingStyle,
                        ),
                        Align(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: Text(
                              'Set your daily exercise time for reminder.',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 13.0),
                            ),
                          ),
                        ),
                        Align(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            color: Theme.of(context).buttonColor,
                            child: FlatButton(
                              onPressed: () async {
                                showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                ).then((selectedTime) async {
                                  int hour = selectedTime.hour;
                                  int minute = selectedTime.minute;
                                  print({hour, minute});
                                  manager.showNotificationDaily(
                                      0,
                                      "Fittness Care",
                                      "It's time to start your daily exercise",
                                      "Daily reminder has been setted at $hour:$minute",
                                      hour,
                                      minute);
                                });
                              },
                              child: Text(
                                "Set Daily Routine",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                      ),
                      delegate: SliverChildListDelegate(
                        [
                          CategoryCard(
                            title: "Warm Up",
                            svgSrc: "assets/icons/warm-up.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WarmUpScreen()),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Body Stretch",
                            svgSrc: "assets/icons/stretch.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BodyStretchScreen()),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Body Work-Out",
                            svgSrc: "assets/icons/Excrecises.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WorkOutScreen()),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Yoga",
                            svgSrc: "assets/icons/yoga.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => YogaScreen()),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Meditation",
                            svgSrc: "assets/icons/Meditation.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MeditationScreen()),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Diet Recipe",
                            svgSrc: "assets/icons/recipe.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietRecipeScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
