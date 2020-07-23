import 'dart:async';
import 'package:Meditation/constants.dart';
import 'package:Meditation/sessions-navigations/dynamic-list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class ActionScreen extends StatefulWidget {
  final String title;
  final String gifDirectory;
  final int number;
  final double frameMin;
  final double frameMax;
  final int milisecondAnimation;
  final int milisecondTimer;
  final int sessionNumber;
  ActionScreen({@required this.title, @required this.gifDirectory, @required this.number, this.sessionNumber,
    @required this.frameMin, @required this.frameMax, @required this.milisecondAnimation, @required this.milisecondTimer});
  @override
  _ActionScreenState createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> with TickerProviderStateMixin{
  GifController controller;
  bool status = true;
  IconData icon = Icons.pause;
  int count = 0;
  Timer timer;

  @override
  void initState() {
    controller = GifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_){
      controller.repeat(min: widget.frameMin, max: widget.frameMax, period: Duration(milliseconds: widget.milisecondAnimation));
    });
    timer = Timer.periodic(new Duration(milliseconds: widget.milisecondTimer), (timer) {
      setState(() {
        count++;
      });
      if(count == widget.number) {
        Navigator.pop(context);
        if(widget.sessionNumber < DynamicList.list.length){
          Navigator.push(context, MaterialPageRoute(builder: (context) => 
            DynamicList.list[widget.sessionNumber],),);
        } 
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title), 
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.ondemand_video,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: GifImage(
                  controller: controller,
                  image: AssetImage(widget.gifDirectory),
                ),
              ),
              Align(
                heightFactor: 2.0,
                alignment: Alignment.bottomCenter,
                child: Text("$count / ${widget.number}", style: counterStyle,),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            status = !status;
            if (status == true) {
              controller.repeat(min: widget.frameMin, max: widget.frameMax, period: Duration(milliseconds: widget.milisecondAnimation));
              timer = Timer.periodic(new Duration(milliseconds: widget.milisecondTimer), (timer) {
                setState(() {
                  count++;
                });
                if(count == widget.number) {
                  Navigator.pop(context);
                  if(widget.sessionNumber < DynamicList.list.length){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => 
                      DynamicList.list[widget.sessionNumber],),);
                  }  
                }
              });
            } else {
              controller.stop();
              timer.cancel();
            }
            setState(() {
              icon = icon == Icons.pause ? Icons.play_arrow : Icons.pause;
            });
          },
          child: Icon(icon),
        ),
      ),
    );
  }
}