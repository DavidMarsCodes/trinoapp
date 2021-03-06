import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/_internal/controls/car_selector.dart';
import 'package:trinoapp/_internal/controls/menu_selector.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';
import 'package:trinoapp/screen/screens.dart';

//TODO https://pub.dev/packages/circular_menu
class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // FirebaseMessaging _firebaseMessaging = FirebaseMessaging();


  @override
  void initState(){
    super.initState();
    // _firebaseMessaging.configure(
    //   onMessage: (message) async {
    //     print("-------> $message");
    //   },
    //   onResume: (message) async {
    //     print("-------> $message");
    //   },
    //   onLaunch: (message) async {},
    // );
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: StyledScaffold(
          image: "assets/images/img-home.svg",
          title: "Hola Juan Francisco!",
          child: Container(
            width: _size.width,
            alignment: Alignment.center,
            child: Column(
              children: [
                CarSelector(
                  width: _size.width * 0.75,
                  carModel: "Audi A5",
                  carId: "SLXH-07",
                ),
                VSpace(15),
                MenuSelector(
                  width: _size.width * 0.90,
                  options: [
                    OptionSelector(
                      svgIcon: "location.svg",
                      title: "Ubicaciones",
                      onpress: () => {Navigator.of(context).pushNamed(ScreensEnum.POSITION.routeName)},
                    ),
                    OptionSelector(
                      title: "Niveles",
                      svgIcon: "scanner.svg",
                      onpress: () => {Navigator.of(context).pushNamed(ScreensEnum.SCANNER.routeName)},
                    ),
                    OptionSelector(
                      title: "Acciones",
                      svgIcon: "actions.svg",
                      onpress: () => {Navigator.of(context).pushNamed(ScreensEnum.ACTION.routeName)},
                    ),
                                        OptionSelector(
                      title: "Agendar",
                      svgIcon: "actions.svg",
                      onpress: () => {Navigator.of(context).pushNamed(ScreensEnum.AGENDAR.routeName)},
                    ),
                  ],
                ),
                VSpace(15),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
