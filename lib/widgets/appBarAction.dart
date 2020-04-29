import 'package:betswinning/screens/membershipScreen.dart';
import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 120.0,
          height: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LogoBets.png')
              )
          ),
        ),
        SizedBox(width: 30.0,),
        Container(
          alignment: Alignment.centerRight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Pre-macth(30)',style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0
              ),),
              IconButton(
                  icon: Icon(Icons.add_circle, color: Colors.white, size: 30.0,),
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MemberShipScreen()
                    ));

                  }),
              Text('Membresia',style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 12.0
              ),),
            ],
          ),
        )
      ],
    );
  }
}
