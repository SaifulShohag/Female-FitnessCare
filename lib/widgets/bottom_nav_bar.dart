import 'package:Meditation/screens/workOutScreen.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:flutter/material.dart';
import '../screens/recipeScreen.dart';
import '../screens/homeScreen.dart';

class BottomNavBar extends StatelessWidget {
  final Widget child;
  BottomNavBar({@required this.child});

  @override
  Widget build(BuildContext context) {
    return SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
            circleColors: [Colors.white, Theme.of(context).buttonColor, Theme.of(context).primaryColor],
            iconTheme: IconThemeData(color: Colors.white, size: 30.0),
            activeIconTheme: IconThemeData(color: Colors.white, size: 30.0),
            backgroundColor: Theme.of(context).primaryColor,
            titleStyle: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            activeTitleStyle: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            actionButtonDetails: SCActionButtonDetails(
                color: Theme.of(context).buttonColor,
                icon: Icon(
                  Icons.expand_less,
                  color: Colors.white,
                ),
                elevation: 2),
            elevation: 2.0,
            items: [
              SCBottomBarItem(
                icon: Icons.home, title: "Home", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              ),
              SCBottomBarItem(
                icon: Icons.restaurant_menu, title: "Recipe", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DietRecipeScreen()));
                }
              ),
              SCBottomBarItem(
                icon: Icons.multiline_chart, title: "Training", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorkOutScreen()));
                }
              ),
              SCBottomBarItem(
                icon: Icons.person, title: "Me", onPressed: () {
                }
              ),
            ],
            circleItems: [
              //Suggested Count: 3
              SCItem(icon: Icon(Icons.contact_phone), onPressed: () {}),
              SCItem(icon: Icon(Icons.add), onPressed: () {}),
              SCItem(icon: Icon(Icons.map), onPressed: () {}),
            ],
            bnbHeight: 80 // Suggested Height 80
            ),
        // Put your Screen Content in Child
        child: child,
      );
  }
}
