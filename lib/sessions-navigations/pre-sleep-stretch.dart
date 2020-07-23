import '../screens/actionScreen.dart';

class PreSleepNavigator {
  static List<ActionScreen> list = [
    ActionScreen(
      title: 'Butt Bridge',
      number: 10,
      gifDirectory: "assets/gifs/butt-bridge.gif",
      frameMin: 0,
      frameMax: 2,
      milisecondAnimation: 2500,
      milisecondTimer: 2500,
      sessionNumber: 1,
    ),
    ActionScreen(
      title: 'Forward Bend',
      number: 8,
      gifDirectory: "assets/gifs/stand-and-reach.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 2,
    ),
    ActionScreen(
      title: "Child's Pose",
      number: 6,
      gifDirectory: "assets/gifs/child-pose-min.gif",
      frameMin: 0,
      frameMax: 5,
      milisecondAnimation: 5000,
      milisecondTimer: 5000,
      sessionNumber: 3,
    ),
    ActionScreen(
      title: 'Quad Stretch Right',
      number: 7,
      gifDirectory: "assets/gifs/quad-stretch-right.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 2500,  
      milisecondTimer: 2500,
      sessionNumber: 4,
    ),
    ActionScreen(
      title: 'Quad Stretch Left',
      number: 7,
      gifDirectory: "assets/gifs/quad-stretch-left.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 2500,  
      milisecondTimer: 2500,
      sessionNumber: 5,
    ),
    ActionScreen(
      title: 'Skipping Without Rope',
      number: 10,
      gifDirectory: "assets/gifs/jump-rope.gif",
      frameMin: 0,
      frameMax: 9,
      milisecondAnimation: 400,
      milisecondTimer: 800,
      sessionNumber: 6,
    ),
    ActionScreen(
      title: 'Cobra Stretch',
      number: 15,
      gifDirectory: "assets/gifs/cobra-stretch.gif",
      frameMin: 0,
      frameMax: 7,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 7,
    ),
    ActionScreen(
      title: 'Dynamic Stretch',
      number: 15,
      gifDirectory: "assets/gifs/dynamic-stretch.gif",
      frameMin: 0,
      frameMax: 7,
      milisecondAnimation: 2500,
      milisecondTimer: 2500,
      sessionNumber: 8,
    ),
    ActionScreen(
      title: 'Triceps Stretch',
      number: 14,
      gifDirectory: "assets/gifs/tricep-stretch.gif",
      frameMin: 0,
      frameMax: 5,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 9,
    ),
    ActionScreen(
      title: 'Biceps Stretch',
      number: 10,
      gifDirectory: "assets/gifs/bicep-stretch.gif",
      frameMin: 0,
      frameMax: 5,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 10,
    ),
    ActionScreen(
      title: 'Lying Twist Stretch',
      number: 10,
      gifDirectory: "assets/gifs/lyingTwistStretch.gif",
      frameMin: 0,
      frameMax: 4,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 11,
    ),
    ActionScreen(
      title: 'Butterfly Stretch',
      number: 8,
      gifDirectory: "assets/gifs/butterfly-stretch.gif",
      frameMin: 0,
      frameMax: 6,
      milisecondAnimation: 3000,
      milisecondTimer: 3000,
      sessionNumber: 12,
    ),
  ];
}