import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/slider_selector.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: _size.height * 0.95,
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff9957F7),
                Color(0xffffffff),
              ],
              stops: [0, 1],
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0.00, 1.00),
            ),
          ),
          child: OnBoardingSelector(
            
            pages: [
              OnboardingMessages(
                title: "HELLO!",
                message: "Know everything you need to know about your car",
                image: "assets/images/img-intro-1.svg",
              ),
              OnboardingMessages(
                title: "HELLO!",
                message: "Get assistance when ever you need, where ever you need",
                image: "assets/images/img-intro-2.svg",
              ),
              OnboardingMessages(
                title: "HELLO!",
                message: "Take control of your car, make it a SmartCar",
                image: "assets/images/img-intro-3.svg",
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
