import 'package:Meditation/widgets/sessionCard.dart';
import 'package:flutter/material.dart';

class WarpSessionCards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: <Widget>[
        SeassionCard(
          seassionNum: 1,
          isDone: true,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 2,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 3,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 4,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 5,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 6,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 7,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 8,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 9,
          press: () {},
        ),
        SeassionCard(
          seassionNum: 10,
          press: () {},
        ),
      ],
    );
  }
}
