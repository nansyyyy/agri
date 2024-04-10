import 'package:agri/controller/constant/imgs.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}): super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool firstAnimationCompleted = false;
    bool secondAnimationCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.view_sidebar_sharp),),
      backgroundColor: Color(0xFFF1FCF3),
      body: Stack(
        children: <Widget>[
          if (!firstAnimationCompleted)
            Center(
              child: BounceInUp(
                animate: true,
                from: 500,
                delay: Duration(milliseconds: 1000),
                child: Image(
                  image: AssetImage(logo),
                  width: 90,
                  height: 90,
                ),
                onFinish: (direction) {
                  setState(() {
                    firstAnimationCompleted = true;
                  });
                },
              ),
            ),
          if (firstAnimationCompleted &&  !secondAnimationCompleted) ...[
            AnimatedPositioned(
              duration: Duration(milliseconds: 5000),
              curve: Curves.easeInOut,
              left: 30,
              top: MediaQuery.of(context).size.height / 2 - 45, // Center vertically
              child: Image(
                image: AssetImage(logo),
                width: 90,
                height: 90,
              ),
            ),
          ]
        ],
      ),
    );
  }
}