import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OnboardingMessages extends StatelessWidget {
  final String title;
  final String message;
  final String image;

  const OnboardingMessages({
    Key key,
    this.title,
    this.message,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top:50),
            child: Text(
            title,
            
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        
        Container(
          padding: EdgeInsets.only(left:50, right: 50),

            child: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'GTWalsheimPro',
              color: Color(0xffffffff),
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Center(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: _size.width,
                  height: _size.width * 1.0,
                  child: WebsafeSvg.asset("assets/images/intro-background.svg"),
                ),
              ),
              Positioned(
                top: 80,
                left: 70,
                child: Container(
                  width: _size.width * 0.60,
                  height: _size.height * 0.30,
                  child: WebsafeSvg.asset(image),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
