import 'dart:ui';
import 'package:betswinning/components/customButtonAnimation.dart';
import 'package:betswinning/screens/loginScreen.dart';
import 'package:betswinning/screens/registerScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  final timerState;
  final selectionTime;

  HomeScreen({
    this.timerState,
    this.selectionTime = const Duration(seconds: 0),
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  AnimationController _positionController;

  @override
  void initState() {
    super.initState();

    _positionController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );

    _positionController.forward();
  }
  @override
  void dispose() {
    _positionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/home1.jpg", fit: BoxFit.cover,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            margin: EdgeInsets.only(top: 80.0, bottom: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: _positionController,
                      builder: (context, child) =>
                          Transform(
                              transform: Matrix4.translationValues(
                                  0.0,
                                  -400 * (1.0 - _positionController.value) - 0.0,
                                  0.0),
                              child:  Container(
                        height:300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/LogoBets.png')
                            )
                        ),
                      )),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomButtonAnimation(
                      label: "Registrarse",
                      background: Colors.transparent,
                      fontColor: Colors.white,
                      borderColor: Colors.white,
                      child: RegisterScreen(),
                    ),
                    SizedBox(height: 20.0,),
                    CustomButtonAnimation(
                      label: "Entrar",
                      background: Colors.white,
                      borderColor: Colors.white,
                      fontColor: Color(0xFFF001117),
                      child: LoginScreen(),
                    ),
                    SizedBox(height: 30),
                    Text('¿Olvidastes tu contraseña?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      decoration: TextDecoration.underline
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }




}
