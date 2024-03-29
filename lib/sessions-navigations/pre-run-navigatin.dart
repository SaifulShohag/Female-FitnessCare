import '../screens/actionScreen.dart';

class PreRunNavigator {
  static List<ActionScreen> list = [
    ActionScreen(
      title: 'Warm-up Stretch',
      number: 10,
      gifDirectory: "assets/gifs/runner-warm-up.gif",
      frameMin: 0,
      frameMax: 19,
      milisecondAnimation: 5000,  
      milisecondTimer: 2500,
      sessionNumber: 1,
    ),
    ActionScreen(
      title: 'Runner Stretch Right',
      number: 8,
      gifDirectory: "assets/gifs/runner-stretch-right.gif",
      frameMin: 0,
      frameMax: 7,
      milisecondAnimation: 4000,
      milisecondTimer: 4000,
      sessionNumber: 2,
    ),
    ActionScreen(
      title: 'Runner Stretch Left',
      number: 8,
      gifDirectory: "assets/gifs/runner-stretch-left.gif",
      frameMin: 0,
      frameMax: 7,
      milisecondAnimation: 4000,
      milisecondTimer: 4000,
      sessionNumber: 3,
    ),
    ActionScreen(
      title: 'Butt Kicks',
      number: 8,
      gifDirectory: "assets/gifs/butt-kicks.gif",
      frameMin: 0,
      frameMax: 44,
      milisecondAnimation: 3200,
      milisecondTimer: 1500,
      sessionNumber: 4,
    ),
    ActionScreen(
      title: 'Skipping Without Rope',
      number: 10,
      gifDirectory: "assets/gifs/jump-rope.gif",
      frameMin: 0,
      frameMax: 9,
      milisecondAnimation: 400,
      milisecondTimer: 800,
      sessionNumber: 5,
    ),
    ActionScreen(
      title: 'Shoulder Stretch Right',
      number: 6,
      gifDirectory: "assets/gifs/shoulder-stretch-right.gif",
      frameMin: 0,
      frameMax: 8,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 6,
    ),
    ActionScreen(
      title: 'Shoulder Stretch Left',
      number: 6,
      gifDirectory: "assets/gifs/shoulder-stretch-left.gif",
      frameMin: 0,
      frameMax: 8,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 7,
    ),
    ActionScreen(
      title: 'Squarts',
      number: 8,
      gifDirectory: "assets/gifs/squats-min.gif",
      frameMin: 0,
      frameMax: 2,
      milisecondAnimation: 2000,
      milisecondTimer: 2000,
      sessionNumber: 8,
    ),
    ActionScreen(
      title: 'Hamstring Stretch Right',
      number: 8,
      gifDirectory: "assets/gifs/hamstring-stretch-right.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 9,
    ),
    ActionScreen(
      title: 'Hamstring Stretch Left',
      number: 8,
      gifDirectory: "assets/gifs/hamstring-stretch-left.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 10,
    ),
  ];
}
