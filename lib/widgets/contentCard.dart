import 'package:Meditation/constants.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final String imageDir;
  final Function onPress;
  ContentCard({@required this.title, @required this.imageDir, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Text(
          title,
          style: subHeaderStyle,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageDir),
            colorFilter: ColorFilter.mode(blendModeColor, BlendMode.darken),
            fit: BoxFit.fitWidth,
          ),
          border: Border.all(width: 2, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
