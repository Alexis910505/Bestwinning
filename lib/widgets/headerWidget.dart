import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {

  final Function onPressed;

  HeaderWidget({this.onPressed});

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 5.0,),
          Container(
              width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LogoBets.png')
              )
            ),
          ),
          Expanded(child: Container()),
          Text('Pre-macth(30)',style: TextStyle(
            color: Colors.white,
            fontSize: 12.0
          ),),
          SizedBox(width: 5.0,),
          IconButton(
              icon: Icon(Icons.add_circle, color: Colors.white, size: 30.0,),
              onPressed:(){
                //ProfitsScreen
              }),
          Text('Depositar',style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 12.0
          ),),

        ],
      ),
    );
  }
}
