import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      child: ListView(
        children: <Widget>[
          Container(
              child: Text(
                  'Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño. Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño')),
          Container(
            margin: EdgeInsets.only(top: 15.0),
              child: Text('Importante',
              style: TextStyle(
                fontSize: 20.0
              ),)),
          Container(
            margin: EdgeInsets.only(top: 10.0),
              child: Text(
                  'Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño. Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño')),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/siervo.png'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35.0, left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Siervo Guzman',style: TextStyle(
                        fontSize: 20.0
                      ),),
                      Text('Trader Bets Winning')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
