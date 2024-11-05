import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cal_app/calculator.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));
    });

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: AnimatedTextKit (
            animatedTexts: [
              TyperAnimatedText("Calculator",textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20
              ))
            ],
            totalRepeatCount: 1,
          ),
        ),
            LoadingAnimationWidget.dotsTriangle(color: Colors.black, size: 70)

          ],
        ),
      ),
    );
  }
}
