import 'package:Meditation/constants.dart';
import 'package:flutter/material.dart';

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 36,
                      decoration: BoxDecoration(
                        color: isDone ? Theme.of(context).primaryColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Session $seassionNum",
                      style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}